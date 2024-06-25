//
//  UserDefaultsManagerTests.swift
//  ModulariOSLernApp-ProjektarbeitTests
//
//  Created by Leon Chamoun on 12.06.24.
//

import XCTest
@testable import ModulariOSLernApp_Projektarbeit

class UserDefaultsManagerTests: XCTestCase {
    
    let userDefaultsManager = UserDefaultsManager.shared
    let suiteName = "com.leonchamoun.ModulariOSLernApp-Projektarbeit"
    
    override func setUp() {
        super.setUp()
        UserDefaults.standard.removePersistentDomain(forName: suiteName)
    }
    
    override func tearDown() {
        UserDefaults.standard.removePersistentDomain(forName: suiteName)
        super.tearDown()
    }
    
    func testSetAndGet() {
        let testKey = "testKey"
        let testValue = "Hello, World!"
        
        userDefaultsManager.set(testValue, forKey: testKey)
        
        let retrievedValue: String? = userDefaultsManager.get(forKey: testKey, type: String.self)
        
        XCTAssertEqual(retrievedValue, testValue)
    }
    
    func testSetAndGetWithCustomType() {
        struct CustomType: Codable, Equatable {
            let name: String
            let age: Int
        }
        
        let testKey = "customTypeKey"
        let testValue = CustomType(name: "John Doe", age: 30)
        
        userDefaultsManager.set(testValue, forKey: testKey)
        
        let retrievedValue: CustomType? = userDefaultsManager.get(forKey: testKey, type: CustomType.self)
        
        XCTAssertEqual(retrievedValue, testValue)
    }
    
    func testRemove() {
        let testKey = "testKey"
        let testValue = "Hello, World!"
        
        userDefaultsManager.set(testValue, forKey: testKey)
        
        userDefaultsManager.remove(forKey: testKey)
        
        let retrievedValue: String? = userDefaultsManager.get(forKey: testKey, type: String.self)
        
        XCTAssertNil(retrievedValue)
    }
    
    func testGetNonExistentKey() {
        let testKey = "nonExistentKey"
        
        let retrievedValue: String? = userDefaultsManager.get(forKey: testKey, type: String.self)
        
        XCTAssertNil(retrievedValue)
    }
}
