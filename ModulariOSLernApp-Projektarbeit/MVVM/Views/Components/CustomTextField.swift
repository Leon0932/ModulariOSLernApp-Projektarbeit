//
//  CustomTextField.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 06.04.24.
//

import SwiftUI

/// A custom text field view with a title, label, optional warning message, and text binding.
struct CustomTextField: View {
    // MARK: - Properties
    /// The title displayed above the text field.
    var title: String
    /// The placeholder label for the text field.
    var label: String
    /// The warning message displayed if there is an error, e.g., empty text after interaction.
    var warningMessage: String
    /// The text being edited in the text field, using a two-way binding.
    @Binding var text: String
    
    /// A state to track whether the user has interacted with the text field.
    @State private var hasInteracted = false
    
    /// A computed property to determine the border color of the text field.
    var borderColor: Color {
        if hasInteracted && text.isEmpty {
            return .red // Red if interacted and empty, indicating an error.
        } else {
            return .gray // Default gray when not in error state.
        }
    }
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.title3)
            
            textFieldView
            warningTextView
        }
    }
}

// MARK: - Subviews
private extension CustomTextField {
    /// The main text field view.
    var textFieldView: some View {
        TextField(label, text: $text)
            .padding(.horizontal)
            .frame(height: 44)
            .onSubmit {
                hasInteracted = true // Mark as interacted when the user submits the form.
                text = text.trimmingCharacters(in: .whitespacesAndNewlines) // Clean input.
            }
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(borderColor, lineWidth: 1) // Apply dynamic border color.
            )
    }
    
    /// The view for displaying the warning message when necessary.
    var warningTextView: some View {
        Group {
            if hasInteracted && text.isEmpty {
                Text(warningMessage)
                    .font(.caption)
                    .foregroundColor(.red) // Display the warning text in red.
            }
        }
    }
}

// MARK: - Preview
#Preview {
    CustomTextField(title: "What's your name",
                    label: "Your profilename",
                    warningMessage: "Type in your profilename",
                    text: .constant("Leon CH"))
}
