//
//  CustomCodeText.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 07.04.24.
//

import SwiftUI
import HighlightSwift

/// A view that displays code text with syntax highlighting and contextual background color based on the language and status.
struct CustomCodeText: View {
    // MARK: - Properties
    /// The code text to display, using a binding to allow for dynamic updates.
    @Binding var codeText: String
    /// The current status of the code operation, which can influence the view's appearance.
    @Binding var status: ResultType
    /// The programming language of the code, which affects syntax highlighting.
    let language: HighlightLanguage
    
    /// A computed property that determines the background color based on the language and status.
    var coloredBackground: Color {
        if language == .shell {
            switch status {
            case .success:
                return Color.gray.opacity(0.2)
            case .warning:
                return Color.yellow.opacity(0.2)
            case .error:
                return Color.red.opacity(0.2)
            }
        } else {
            return Color.gray.opacity(0.2)
        }
    }
    
    /// A computed property that determines the text alignment within the view.
    var alignmentText: Alignment {
        (status == .warning && language == .shell) ? .center : .leading
    }
    
    // MARK: - Body
    var body: some View {

                CodeText(codeText)
                    .codeTextLanguage(language)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: alignmentText)
                    .background(coloredBackground)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                
             
        }
}

// MARK: - Preview
#Preview {
    CustomCodeText(codeText: .constant("""
                            let myName = "Leon"
                            print(myName)
                            """),
                   status: .constant(.error),
                   language: .swift)
}
