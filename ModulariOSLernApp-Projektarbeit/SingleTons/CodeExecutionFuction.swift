//
//  CodeExecutionSwiftViewModel.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 13.04.24.
//

import SwiftUI

class CodeExecutionFuction {
    static let shared = CodeExecutionFuction()

    private init() {}

    func runCode(language: String, version: String, code: String) async -> (String, ResultType) {
        let requestBody = RunCodeRequest(language: language, 
                                         version: version,
                                         files: [File(name: "main.swift",
                                                      content: code)])
        
        guard let url = URL(string: "https://emkc.org/api/v2/piston/execute") else {
            return ("Ungültige URL", .error)
        }
        
        do {
            let requestData = try JSONEncoder().encode(requestBody)
            var request = URLRequest(url: url)
            request.httpMethod = "POST"
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            request.httpBody = requestData
            
            let (data, _) = try await URLSession.shared.data(for: request)
            
            let response = try JSONDecoder().decode(RunCodeResponse.self, from: data)
            var result = response.run.output ?? response.run.stdout
            var status: ResultType = .success
            
            if !response.run.stderr.isEmpty {
                status = .error
                result += "\nFehler: \(response.run.stderr)"
            }
            if let compileOutput = response.compile?.output ?? response.compile?.stdout {
                status = .error
                result += "\nKompilierausgabe: \(compileOutput)"
            }
            
            if result.isEmpty {
                status = .warning
                result = "** Empty Output **"
            }
            
            return (result, status)
        } catch {
            return ("Fehler: \(error.localizedDescription)", .error)
        }
    }
}

