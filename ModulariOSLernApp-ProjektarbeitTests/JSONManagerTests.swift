//
//  JSONManagerTests.swift
//  ModulariOSLernApp-ProjektarbeitUITests
//
//  Created by Leon Chamoun on 09.06.24.
//

import XCTest
@testable import ModulariOSLernApp_Projektarbeit

class JSONManagerTests: XCTestCase {

    struct TestCodable: Codable, Equatable {
        let id: Int
        let name: String
    }
    
    override func setUp() {
        super.setUp()
        _ = JSONManager.shared.deleteAllFiles()
    }
    
    func testEncode() {
        let testObject = TestCodable(id: 1, name: "Test")
        let encodedData = JSONManager.shared.encode(testObject)
        XCTAssertNotNil(encodedData, "Encoding should succeed and return non-nil data")
    }
    
    func testDecode() {
        let testObject = TestCodable(id: 1, name: "Test")
        let encodedData = JSONManager.shared.encode(testObject)!
        let decodedObject: TestCodable? = JSONManager.shared.decode(encodedData)
        XCTAssertNotNil(decodedObject, "Decoding should succeed and return a non-nil object")
        XCTAssertEqual(testObject, decodedObject, "Decoded object should be equal to the original object")
    }
    
    func testSaveDataInInternalFS() {
        let testObject = TestCodable(id: 1, name: "Test")
        let result = JSONManager.shared.saveDataInInternalFS(filename: "testFile.json", data: testObject)
        XCTAssertEqual(result, .success, "Saving data should succeed")
    }
    
    func testLoadDataFromInternalFileSystem() {
        let testObject = [TestCodable(id: 1, name: "Test")]
        let _: (ResultType) = JSONManager.shared.saveDataInInternalFS(filename: "testFile2.json", data: testObject)
        let (loadedObjects, result): ([TestCodable], ResultType) = JSONManager.shared.loadDataFromInternalFileSystem(fileName: "testFile2.json")

        
        XCTAssertEqual(result, .success, "Loading data should succeed")
        XCTAssertEqual(loadedObjects, testObject, "Loaded object should be equal to the original object")
    }
    
    func testDeleteAllFiles() {
        let testObject = TestCodable(id: 1, name: "Test")
        let _ = JSONManager.shared.saveDataInInternalFS(filename: "testFile.json", data: testObject)
        let deleteResult = JSONManager.shared.deleteAllFiles()
        XCTAssertEqual(deleteResult, .success, "Deleting all files should succeed")
        
        let (loadedObjects, result): ([TestCodable], ResultType) = JSONManager.shared.loadDataFromInternalFileSystem(fileName: "testFile.json")
        XCTAssertEqual(result, .error, "Loading data should fail after deletion")
        XCTAssertTrue(loadedObjects.isEmpty, "Loaded objects should be empty after deletion")
    }
}
