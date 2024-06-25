//
//  NextViewButton.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 14.04.24.
//

import SwiftUI

/// A generic view component that creates a navigation button with a customizable destination view.
struct NextViewButton<Content: View>: View {
    // MARK: - Properties
    /// A closure that returns the destination view when the button is tapped.
    let destination: () -> Content
    
    // MARK: - Body
    var body: some View {
        HStack {
            Spacer() // Pushes the button to the right edge of the container.
            
            NavigationLink(destination: destination()) {
                Image(systemName: "arrow.right.circle.fill") // System icon for the button.
                    .resizable() // Allows the image to be resized.
                    .aspectRatio(contentMode: .fit) // Keeps the image's aspect ratio.
                    .frame(width: 50, height: 50) // Specifies the size of the button.
                    .foregroundColor(.blue) // Sets the color of the button.
            }
        }
    }
}

// MARK: - Preview
#Preview {
    NextViewButton {
        ContentView()
    }
}
