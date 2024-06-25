//
//  CodeEditorView.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 15.04.24.
//

import SwiftUI
import CodeEditor

/// A view that provides an interface for editing code with options to change the theme and dismiss the editor.
struct EditCodeView: View {
    @Environment(\.dismiss) var dismiss
    
    @Binding var codeText: String
    @Binding var isLoading: AppState
    var taskDescription: String = ""
    
    
    // MARK: - State Variables
    @State private var language = CodeEditor.Language.swift
    @State private var theme = CodeEditor.ThemeName.ocean
    @State private var wasLoaded = false
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            header
            taskDescriptionView
            codeEditorView
        }
        .onAppear(perform: loadContent)
        .centeredProgressView(isShowing: $isLoading)
        .padding()
    }
}

// MARK: - Subviews
private extension EditCodeView {
    var header: some View {
        HStack {
            themePicker
            Spacer()
            closeButton
        }
    }
    
    var taskDescriptionView: some View {
        Text(LocalizedStringKey(taskDescription))
            .font(.body)
            .opacity(taskDescription.isEmpty ? 0 : 1)
    }
    
    var themePicker: some View {
        Picker("Theme", selection: $theme) {
            ForEach(CodeEditor.availableThemes, id: \.self) { theme in
                Text(theme.rawValue.capitalized).tag(theme)
            }
        }
        .background(Color.gray.opacity(0.1))
        .cornerRadius(15)
    }
    
    var closeButton: some View {
        Button("Close") {
            dismiss()
            isLoading = .loading
        }
    }
    
    // Code editor view configuration.
    var codeEditorView: some View {
        CodeEditor(source: $codeText, 
                   language: language,
                   theme: theme)
            .background(
                Rectangle().stroke(.black)
            )
    }
    
    func loadContent() {
        guard !wasLoaded else { return }
        
        Task {
            DispatchQueue.main.async {
                isLoading = .loading
            }
            try? await Task.sleep(nanoseconds: 100_000_000) // Simulates a delay of 100 milliseconds.
            DispatchQueue.main.async {
                isLoading = .done
                wasLoaded = true
            }
        }
    }
}




