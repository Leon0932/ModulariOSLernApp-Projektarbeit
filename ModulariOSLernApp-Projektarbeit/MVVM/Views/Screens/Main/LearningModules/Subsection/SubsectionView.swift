//
//  SingleSectionView.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 07.04.24.
//

import SwiftUI

/// A view that presents detailed information and interactivity for a specific subsection.
struct SubsectionView: View {
    // MARK: - ViewModel
    @ObservedObject var subsectionVM: SubsectionViewModel
    
    @State private var isExpanded = true
    
    // MARK: - Body
    var body: some View {
        ScrollView {
            content
                .navigationTitle(subsectionTitle)
                .navigationBarTitleDisplayMode(.inline)
                .toolbar { toolbarItem }
                .padding([.horizontal, .top])
                .onAppear(perform: subsectionVM.performInitialLoad)
                .sheet(isPresented: $subsectionVM.showsSafariView) { SafariWebViewWrapper(urlString: linkDocumentation) }
        }
        .centeredProgressView(isShowing: $subsectionVM.isLoading)
    }
    
    // MARK: - Private View Components
    private var content: some View {
        VStack(alignment: .leading, spacing: 40) {
            contentBlocks
            if let exercise = codeExercise {
                nextViewButton(for: exercise)
            } else {
                if subsectionVM.subsection.isCompleted {
                    CompletedExerciseView()
                } else {
                    finishButton
                }
                
            }
        }
    }
    
    private var contentBlocks: some View {
        VStack(alignment: .leading, spacing: 16) {
            if isExpanded {
                Description(LocalizedStringKey(contentDescpription))
                    .animation(.easeInOut, value: 0.3)
            }
            
            showLessButton
            
            
            
            CodeEditorView(codeText: contentCodeBinding,
                           codeResult: resultBinding,
                           isLoading: $subsectionVM.isLoading,
                           moduleType: subsectionVM.moduleType)
            .opacity(contentCode.isEmpty ? 0 : 1)
            
            
            
        }
    }
    
    private var showLessButton: some View {
        Button(action: {
            withAnimation {
                isExpanded.toggle()
            }
        }) {
            Text(isExpanded ? "Show Less" : "Show More")
                .foregroundColor(.blue)
        }
        
    }
    
    private func nextViewButton(for codeExercise: CodeExercise) -> some View {
        NextViewButton {
            ExerciseView(exerciseVM: subsectionVM.setupExerciseViewModel(codeExercise: codeExercise))
        }
    }
    
    private var toolbarItem: some ToolbarContent {
        ToolbarItem(placement: .navigationBarTrailing) {
            Button {
                subsectionVM.showsSafariView = true
            } label: {
                Image(systemName: "link.circle.fill")
                    .font(.title2)
            }
        }
    }
    
    private var finishButton: some View {
        CustomButton(title: "Finish lecture", buttonType: .finishing) {
            withAnimation {
                subsectionVM.toggleCompletion()
            }
            
        }
    }
}

