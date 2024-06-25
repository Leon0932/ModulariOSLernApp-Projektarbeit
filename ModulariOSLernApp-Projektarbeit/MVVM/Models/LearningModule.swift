//
//  Module.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 14.04.24.
//

import Foundation

struct Module: Identifiable, Codable {
    let id: Int
    let title: String
    let time: Int
    let moduleType: ModuleType
    let difficulty: Difficulty
    var progress: Double = 0.0
    var completedSections: Int = 0
    var sections: [Section]
}

struct Section: Identifiable, Codable {
    let id: Int
    let title: String
    var completedSubsections: Int = 0
    var subsections: [Subsection]
}

struct Subsection: Identifiable, Codable {
    let id: Int
    let title: String
    let contentDescription: String
    var contentCode: String
    var isCompleted: Bool = false
    var linkDocumentation: String
    var codeExercise: CodeExercise?
}

struct CodeExercise: Identifiable, Codable {
    let id: Int
    let title: String
    let description: String
    var startingCode: String
    let solutionCode: [String]
}
