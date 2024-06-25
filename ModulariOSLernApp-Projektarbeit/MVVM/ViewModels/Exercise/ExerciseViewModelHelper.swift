//
//  ExerciseViewModel.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 30.05.24.
//

import Foundation

// MARK: - Core Functions
extension ExerciseViewModel {
    /// Checks the user's entered code against the solution code.
    func checkCode() {
        showAlert = true
        
        let usersSolution = exercise
            .startingCode
            .trimmingCharacters(in: .whitespacesAndNewlines)
            .removingAllWhitespacesAndNewlines()
        
        let correctUserSolution = exercise.solutionCode.contains {
            $0.trimmingCharacters(in: .whitespacesAndNewlines)
                .removingAllWhitespacesAndNewlines() == usersSolution
        }
        
        if correctUserSolution {
            alertType = .success
            alertMessage = "The code is successful 🍾🎉\nYou finished this section"
        } else {
            alertType = .error
        
            if wrongSolutionCounter == 1 && !showSolutionTrailingBar {
                showSolutionTrailingBar.toggle()
            } else { wrongSolutionCounter += 1
            }
            
            alertMessage = "The code is wrong ☹️\nTry again"
        }
    }
    
    /// Performs completion actions if the exercise was successful.
    func performCompletion() {
        if alertType == .success {
            subsection.isCompleted = true
            subsection.codeExercise = exercise
            onCompletion?(true, subsection)
        }
    }
    
    /// Simulates a loading process when the view appears, if the subsection is not completed.
    func performInitialLoad() {
        guard !subsection.isCompleted else { return }
        
        isLoading = .loading
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            self.isLoading = .done
        }
    }
}
