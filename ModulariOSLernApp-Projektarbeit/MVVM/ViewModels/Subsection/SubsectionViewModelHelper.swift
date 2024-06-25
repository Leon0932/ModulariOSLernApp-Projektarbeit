//
//  SubsectionViewModelHelper.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 30.05.24.
//

import Foundation

extension SubsectionViewModel {
    // MARK: - Methods
    
    /// Performs an initial load if the content has not been loaded yet.
    func performInitialLoad() {
        guard !wasLoaded else { return }
        
        
        isLoading = .loading
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            self.isLoading = .done
        }
        
        wasLoaded = true
        
    }
    
    /// Toggles the completion status of the subsection.
    func toggleCompletion() {
        subsection.isCompleted.toggle()
        parentViewModel?.updateSubsection(subsection: subsection)
    }
    
    /// Creates and configures an `ExerciseViewModel` for the subsection.
    ///
    /// - Parameter codeExercise: The code exercise to set up the view model for.
    /// - Returns: An instantiated `ExerciseViewModel` for the given exercise.
    func setupExerciseViewModel(codeExercise: CodeExercise) -> ExerciseViewModel {
        let exerciseViewModel = ExerciseViewModel(exercise: codeExercise,
                                                  subsection: subsection,
                                                  parentViewModel: self)
        
        exerciseViewModel.onCompletion = { success, subsection in
            if success {
                self.parentViewModel?.updateSubsection(subsection: subsection)
            }
        }
        
        return exerciseViewModel
    }
}

