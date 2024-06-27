//
//  CodeEditorView.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 14.04.24.
//

import SwiftUI
import CodeEditor

/// A view that provides an interface for editing, running, and viewing results of code snippets.
struct CodeEditorView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var taskDescription: String = ""
    
    @Binding var codeText: String
    @Binding var codeResult: String
    @Binding var isLoading: AppState
    
    var moduleType: ModuleType
    
    @State private var showSheet = false
    @State private var statusResult: ResultType = .success
    @State private var isEditable = false
    @State private var showSwiftUIView = false
    
    @State private var showInfo = false
    @State private var isExporting = false
    
    var body: some View {
        VStack(spacing: 8) {
            editableCodeView
            controlButtons
            resultOutputViewSwift
        }
        .sheet(isPresented: $showSheet,
               onDismiss: dismissSheet,
               content: sheetView)
        .fileExporter(
            isPresented: $isExporting,
            document: SwiftCodeDocument(text: codeText),
            contentType: .plainText,
            defaultFilename: "Code.swift",
            onCompletion: handleExportResult
        )
    }
}

// MARK: - Subviews
private extension CodeEditorView {
    /// View for displaying or editing the code.
    var editableCodeView: some View {
        ZStack {
            if isEditable {
                TextEditor(text: $codeText)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.primary)
                    )
            } else {
                CustomCodeText(codeText: $codeText,
                               status: $statusResult,
                               language: .swift)
            }
            
            if showInfo {
                InfoModalView(info: "Info: Export the code and run it in the Swift Playgrounds app on iPad or Mac, and make sure the main structure of the app includes the correct view within the WindowGroup.",
                              showingModal: $showInfo)
                .transition(.scale)
            }
        }
    }
    
    /// Contains buttons for running code or toggling edit mode.
    var controlButtons: some View {
        HStack {
            if moduleType == .swift {
                ActionButton(text: "Run",
                             systemImage: "play.fill",
                             action: runSwiftCode)
            } else {
                ActionButton(text: "Info",
                             systemImage: "info.circle.fill",
                             action: showInfoModal)
            }
            
            Spacer()
            
            
            HStack {
                if moduleType == .swiftUI {
                    ActionButton(text: "Export",
                                 systemImage: "square.and.arrow.up.fill",
                                 action: exportSwiftUICode)
                    
                    Text("/")
                        .font(.body)
                        .bold()
                        .foregroundStyle(.blue)
                }
                
                
                ActionButton(text: isEditable ? "Done" : "Edit",
                             systemImage: "pencil",
                             action: toggleEdit)
            }
            
            
        }
    }
    
    /// Displays the output of the code execution.
    var resultOutputViewSwift: some View {
        Group {
            if !codeResult.isEmpty {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Output").font(.body).bold()
                    CustomCodeText(codeText: $codeResult,
                                   status: $statusResult,
                                   language: .shell)
                }
                .padding(.top, 16)
                .id(codeResult)
            }
        }
    }
    
    func sheetView() -> some View {
        EditCodeView(codeText: $codeText,
                     isLoading: $isLoading,
                     taskDescription: taskDescription)
    }
    
}

// MARK: - Actions
private extension CodeEditorView {
    /// Executes the code using the ViewModel.
    func runSwiftCode() {
        Task {
            DispatchQueue.main.async {
                isLoading = .loading
            } // Diese Zeile sollte auf dem Hauptthread sein
            let (compilerResult, status) = await CodeExecutionFuction.shared.runCode(language: "swift", 
                                                                                     version: "5.3.3",
                                                                                     code: codeText)
            
            DispatchQueue.main.async {
                codeResult = compilerResult
                statusResult = status
                isLoading = .done
            }
        }
    }
    
    func runSwiftUICode() {
        showSwiftUIView.toggle()
    }
    
    /// Toggles the edit mode and shows a sheet for code editing.
    func toggleEdit() {
        showSheet = true
        isEditable.toggle()
    }
    
    /// Dismisses the edit modal sheet and handles any necessary cleanup.
    func dismissSheet() {
        Task {
            DispatchQueue.main.async {
                isLoading = .loading
            }
            try? await Task.sleep(nanoseconds: 0_000_100_000)
            
            DispatchQueue.main.async {
                isEditable = false
                isLoading = .done
            }
        }
    }
    
    func showInfoModal() {
        withAnimation {
            showInfo.toggle()
        }
    }
    
    func exportSwiftUICode() {
        isExporting.toggle()
    }
    
    func handleExportResult(_ result: Result<URL, Error>) {
        switch result {
        case .success(let url):
            print("File saved to \(url)")
        case .failure(let error):
            print("Failed to save file: \(error.localizedDescription)")
        }
    }
}

private extension CodeEditorView {
    struct ActionButton: View {
        var text: String
        var systemImage: String
        var action: () -> Void
        
        
        var body: some View {
            Button(action: action) {
                Label(text, systemImage: systemImage)
                    .font(.body)
                    .bold()
            }
        }
    }
}
