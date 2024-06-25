//
//  ExerciseViewModel.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 21.04.24.
//

import Foundation

/// ViewModel for managing the interactions and state of a code exercise within a subsection.
class ExerciseViewModel: ObservableObject {
    // MARK: - Published Properties
    @Published var exercise: CodeExercise
    @Published var subsection: Subsection
    
    var parentViewModel: SubsectionViewModel
    
    @Published var result = ""
    
    @Published var showAlert = false
    @Published var alertMessage = ""
    @Published var alertType: ResultType = .warning
    
    @Published var showSolution = false
    @Published var showSolutionTrailingBar = false
    // 1 -> ShowSolution
    @Published var wrongSolutionCounter = 0
    
    @Published var isLoading: AppState = .done
    
    var onCompletion: ((Bool, Subsection) -> Void)?
    
    // MARK: - Initialization
    /// Initializes the ViewModel with an exercise, the associated subsection, and the subsection's ViewModel.
    ///
    /// - Parameters:
    ///   - exercise: The code exercise.
    ///   - subsection: The associated subsection.
    ///   - subsectionVM: The ViewModel of the subsection.
    init(exercise: CodeExercise, subsection: Subsection, parentViewModel: SubsectionViewModel) {
        self.exercise = exercise
        self.subsection = subsection
        self.parentViewModel = parentViewModel
        
        if subsection.isCompleted { showSolutionTrailingBar = true }
    }
}




