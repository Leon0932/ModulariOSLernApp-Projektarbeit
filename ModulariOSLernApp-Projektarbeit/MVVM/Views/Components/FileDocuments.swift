//
//  TextFileDocument.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 30.05.24.
//

import SwiftUI
import UniformTypeIdentifiers

struct TextFileDocument: FileDocument {
    static var readableContentTypes: [UTType] { [.json] }
    var text: Data
    
    init(text: Data) {
        self.text = text
    }
    
    init(configuration: ReadConfiguration) throws {
        guard let data = configuration.file.regularFileContents else {
            throw CocoaError(.fileReadCorruptFile)
        }
        text = data
    }
    
    func fileWrapper(configuration: WriteConfiguration) throws -> FileWrapper {
        return FileWrapper(regularFileWithContents: text)
    }
}

struct SwiftCodeDocument: FileDocument {
    static var readableContentTypes: [UTType] { [.plainText] }

    var text: String

    init(text: String) {
        self.text = "import SwiftUI\n\n\(text)"
    }

    init(configuration: ReadConfiguration) throws {
        if let data = configuration.file.regularFileContents,
           let text = String(data: data, encoding: .utf8) {
            self.text = "import SwiftUI\n\n\(text)"
        } else {
            throw CocoaError(.fileReadCorruptFile)
        }
    }

    func fileWrapper(configuration: WriteConfiguration) throws -> FileWrapper {
        let data = text.data(using: .utf8)!
        return .init(regularFileWithContents: data)
    }
}
