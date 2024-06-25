//
//  ExerciseHelpers.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 28.04.24.
//

import SwiftUI

extension ExerciseView {
    var exerciseTitle: String {
        exerciseVM.exercise.title
    }
    
    var exerciseDescription: String {
        exerciseVM.exercise.description
    }
    
    var startingCode: Binding<String> {
        $exerciseVM.exercise.startingCode
    }
    
    var subsectionIsCompleted: Bool {
        exerciseVM.subsection.isCompleted
    }
    
    var solutionCode: [String] {
        exerciseVM.exercise.solutionCode
    }
}
