//
//  ExerciseView.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 12.04.24.
//

import SwiftUI
import UIKit


/// Eine Ansicht, die für Code-Übungen entworfen wurde und einen Code-Editor sowie interaktive Elemente enthält, um Rückmeldung zu Code-Einsendungen zu geben.
struct ExerciseView: View {
    // MARK: - Environment and State Variables
    @ObservedObject var exerciseVM: ExerciseViewModel
    
    // MARK: - Body
    var body: some View {
        ScrollView {
            content
                .navigationTitle("Exercise")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar { topTrailingBar }
                .alert(isPresented: $exerciseVM.showAlert) { alertButton }
                .sheet(isPresented: $exerciseVM.showSolution) { SolutionsExerciseView(solutions: solutionCode) }
                .padding([.horizontal, .top])
                .onAppear(perform: exerciseVM.performInitialLoad)
        }
        .centeredProgressView(isShowing: $exerciseVM.isLoading)
    }
    
    // MARK: - Private View Components
    
    private var content: some View {
        VStack(alignment: .leading, spacing: 16) {
            titleSection
            descriptionSection
            codeEditorView
            actionButton
        }
    }
    
    /// Zeigt den Titel der Übung an.
    private var titleSection: some View {
        Text(exerciseTitle)
            .font(.title2)
            .fontWeight(.semibold)
    }
    
    /// Zeigt die Beschreibung der Übung an.
    private var descriptionSection: some View {
        Text(LocalizedStringKey(exerciseDescription))
            .font(.body)
    }
    
    /// Integriert eine Ansicht für den Code-Editor.
    private var codeEditorView: some View {
        CodeEditorView(taskDescription: exerciseDescription, 
                       codeText: startingCode,
                       codeResult: $exerciseVM.result,
                       isLoading: $exerciseVM.isLoading,
                       moduleType: exerciseVM.parentViewModel.moduleType)
    }
    
    /// Button zum Überprüfen des Codes oder zur Anzeige des Abschlusses.
    private var actionButton: some View {
        Group {
            if !subsectionIsCompleted {
                CustomButton(title: "Check Code",
                             buttonType: .primary,
                             action: exerciseVM.checkCode)
               
            } else {
                CompletedExerciseView()
                    
            }
        }
        .padding(.top, 60)
    }
    
    private var alertButton: Alert {
        Alert(title: Text(exerciseVM.alertMessage),
              dismissButton: .default(Text("OK")) {
                                          withAnimation {
                                              exerciseVM.performCompletion()
                                          }
                                      })
    }
    
    private var topTrailingBar: some ToolbarContent {
        ToolbarItem(placement: .navigationBarTrailing) {
            Button {
                exerciseVM.showSolution = true
            } label: {
                Text("Solutions")
            }
            .opacity(exerciseVM.showSolutionTrailingBar ? 1 : 0)
        }
        
    }
}

