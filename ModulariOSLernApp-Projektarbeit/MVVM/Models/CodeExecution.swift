//
//  CodeExecution.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 20.04.24.
//

import Foundation

struct RunCodeRequest: Codable {
    let language: String
    let version: String
    let files: [File]
}

struct File: Codable {
    let name: String
    let content: String
}

struct RunCodeResponse: Codable {
    let run: RunData
    let compile: CompileData?
    
    struct RunData: Codable {
        let stdout: String
        let stderr: String
        let output: String?
        let code: Int
        let signal: String?
    }
    
    struct CompileData: Codable {
        let stdout: String
        let stderr: String
        let output: String?
        let code: Int
        let signal: String?
    }
}
