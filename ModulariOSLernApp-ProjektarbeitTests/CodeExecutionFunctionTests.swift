//
//  CodeExecutionFunctionTests.swift
//  ModulariOSLernApp-ProjektarbeitTests
//
//  Created by Leon Chamoun on 12.06.24.
//

import XCTest
@testable import ModulariOSLernApp_Projektarbeit

class CodeExecutionFunctionTests: XCTestCase {
    var codeExecution: CodeExecutionFuction!

    override func setUp() {
        super.setUp()
        codeExecution = CodeExecutionFuction.shared
    }

    override func tearDown() {
        codeExecution = nil
        super.tearDown()
    }

    func testHelloWorld() async {
        let code = """
        print("Hello World")
        """
        let (output, result) = await codeExecution.runCode(language: "swift", version: "5.3", code: code)
        
        XCTAssertEqual(result, .success)
        XCTAssertEqual(output.trimmingCharacters(in: .whitespacesAndNewlines), "Hello World")
    }

    func testComplexCalculation() async {
        let code = """
        func complexCalculation() -> Int {
            let a = 10
            let b = 20
            let c = 30
            return (a * b + c) / 2
        }
        print(complexCalculation())
        """
        let (output, result) = await codeExecution.runCode(language: "swift", version: "5.3", code: code)
        
        XCTAssertEqual(result, .success)
        XCTAssertEqual(output.trimmingCharacters(in: .whitespacesAndNewlines), "115")
    }

    func testEmptyOutput() async {
        let code = """
        // This code does nothing
        """
        let (output, result) = await codeExecution.runCode(language: "swift", version: "5.3", code: code)
        
        XCTAssertEqual(result, .warning)
        XCTAssertEqual(output, "** Empty Output **")
    }

    func testSyntaxError() async {
        let code = """
        print("Hello World
        """
        let (output, result) = await codeExecution.runCode(language: "swift", version: "5.3", code: code)
        
        XCTAssertEqual(result, .error)
        XCTAssertTrue(output.contains("Fehler"))
    }

    func testRuntimeError() async {
        let code = """
        let array = [1, 2, 3]
        print(array[5])
        """
        let (output, result) = await codeExecution.runCode(language: "swift", version: "5.3", code: code)
        
        XCTAssertEqual(result, .error)
        XCTAssertTrue(output.contains("Fehler"))
    }
}
