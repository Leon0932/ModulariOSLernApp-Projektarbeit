//
//  CustomButton.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 06.04.24.
//

import SwiftUI

/// A custom button view that can display a title and an optional subtext.
struct CustomButton: View {
    // MARK: - Properties
    /// The main text to display on the button.
    var title: String
    /// Optional subtext for additional information below the button.
    var subText: String?
    /// The type of the button, affecting its styling.
    var buttonType: ButtonType = .primary
    /// The action to perform when the button is tapped.
    var action: () -> Void
    
    // MARK: - Body
    var body: some View {
        VStack(spacing: 8) {
            primaryButton
            subTextView
        }
    }
}

// MARK: - Subviews
private extension CustomButton {
    /// The primary button view.
    var primaryButton: some View {
        Button(action: action) {
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding()
                .background(buttonType.color)
                .cornerRadius(10)
        }
    }
    
    /// The view for displaying optional subtext.
    var subTextView: some View {
        Group {
            if let text = subText {
                Text(text)
                    .font(.caption)
            }
        }
    }
}

// MARK: - Preview
#Preview {
    CustomButton(title: "Save",
                 subText: "Settings can be changed",
                 buttonType: .primary) {
        print("Hello World")
    }
}
