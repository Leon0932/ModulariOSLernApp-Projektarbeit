//
//  JSONManager.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 27.04.24.
//

import Foundation

class JSONManager {
    static let shared = JSONManager()
    
    private init() {}
    
    /// Encodes a Codable object into JSON data.
    /// - Parameter data: The Codable object to encode.
    /// - Returns: The JSON data or nil if encoding fails.
    func encode<CodableData: Codable>(_ data: CodableData) -> Data? {
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        do {
            return try encoder.encode(data)
        } catch {
            print("Error encoding data: \(error)")
            return nil
        }
    }
    
    /// Decodes JSON data into a Codable object.
    /// - Parameter jsonData: The JSON data to decode.
    /// - Returns: The decoded Codable object or nil if decoding fails.
    func decode<CodableData: Codable>(_ jsonData: Data) -> CodableData? {
        let decoder = JSONDecoder()
        do {
            return try decoder.decode(CodableData.self, from: jsonData)
        } catch {
            print("Error decoding JSON data: \(error)")
            return nil
        }
    }
    
    /// Reads a local JSON file from the main bundle.
    /// - Parameter name: The name of the JSON file (without extension).
    /// - Returns: The data from the JSON file or nil if reading fails.
    func readLocalJSONFile(forName name: String) -> Data? {
        guard let filePath = Bundle.main.path(forResource: name, ofType: "json") else { return nil }
        let fileUrl = URL(fileURLWithPath: filePath)
        do {
            return try Data(contentsOf: fileUrl)
        } catch {
            print("Error reading local JSON file: \(error)")
            return nil
        }
    }
    
    /// Saves a Codable object to the internal file system.
    /// - Parameters:
    ///   - filename: The name of the file.
    ///   - data: The Codable object to save.
    /// - Returns: A ResultType indicating success or failure.
    func saveDataInInternalFS<CodableData: Codable>(filename: String, data: CodableData) -> ResultType {
        guard let encodedData = encode(data) else { return .error }
        let url = getDocumentsDirectory().appendingPathComponent(filename)
        do {
            try encodedData.write(to: url, options: .atomicWrite)
            return .success
        } catch {
            print("Error saving data to internal file system: \(error)")
            return .error
        }
    }
    
    /// Loads Codable objects from a local JSON file in the main bundle.
    /// - Parameter fileName: The name of the JSON file (without extension).
    /// - Returns: An array of loaded Codable objects or nil if loading fails.
    func loadDataFromRepo<CodableData: Codable>(fileName: String) -> [CodableData]? {
        guard let jsonData = readLocalJSONFile(forName: fileName) else { return nil }
        return decode(jsonData)
    }
    
    /// Loads Codable objects from a JSON file in the internal file system.
    /// - Parameter fileName: The name of the JSON file.
    /// - Returns: A tuple containing an array of loaded Codable objects and a ResultType indicating success or failure.
    func loadDataFromInternalFileSystem<CodableData: Codable>(fileName: String) -> ([CodableData], ResultType) {
        let url = getDocumentsDirectory().appendingPathComponent(fileName)

        do {
            let data = try Data(contentsOf: url)
            if let parsedData: [CodableData] = decode(data) {
       
                return (parsedData, .success)
            }
            
        
        } catch {
            print("Error loading data from internal file system: \(error)")
        }
        return ([], .error)
    }
    
    /// Exports a Codable object to a JSON file in the internal file system.
    /// - Parameters:
    ///   - data: The Codable object to export.
    ///   - filename: The name of the JSON file (without extension).
    /// - Returns: A ResultType indicating success or failure.
    func exportToJSON<CodableData: Codable>(_ data: CodableData, filename: String) -> ResultType {
        guard let jsonData = encode(data) else { return .error }
        let url = getDocumentsDirectory().appendingPathComponent("\(filename).json")
        do {
            try jsonData.write(to: url, options: .atomicWrite)
            print("File saved to: \(url)")
            return .success
        } catch {
            print("Failed to write JSON data: \(error.localizedDescription)")
            return .error
        }
    }
    
    /// Exports a Codable object to Data.
    /// - Parameter data: The Codable object to export.
    /// - Returns: The exported data or nil if encoding fails.
    func exportData<CodableData: Codable>(_ data: CodableData) -> Data? {
        return encode(data)
    }
    
    /// Imports a Codable object from JSON data.
    /// - Parameter jsonData: The JSON data to import.
    /// - Returns: The imported Codable object.
    /// - Throws: An error if decoding fails.
    func importData<CodableData: Codable>(from jsonData: Data) throws -> CodableData {
        let decoder = JSONDecoder()
        return try decoder.decode(CodableData.self, from: jsonData)
    }
    
    /// Deletes all files in the documents directory.
    /// - Returns: A ResultType indicating success or failure.
    func deleteAllFiles() -> ResultType {
        let fileManager = FileManager.default
        let documentsDirectory = getDocumentsDirectory()
        do {
            let filePaths = try fileManager.contentsOfDirectory(at: documentsDirectory, 
                                                                includingPropertiesForKeys: nil,
                                                                options: [])
            for filePath in filePaths {
                try fileManager.removeItem(at: filePath)
            }
            return .success
        } catch {
            print("Failed to delete all files: \(error)")
            return .error
        }
    }
    
    /// Returns the URL of the documents directory.
    /// - Returns: The URL of the documents directory.
    private func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, 
                                             in: .userDomainMask)
        return paths[0]
    }
}
