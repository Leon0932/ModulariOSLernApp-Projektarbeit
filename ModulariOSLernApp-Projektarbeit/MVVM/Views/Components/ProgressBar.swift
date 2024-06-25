//
//  ProgressBar.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 06.04.24.
//

import SwiftUI

/// A view that represents a progress bar which visually indicates a percentage of completion.
struct ProgressBar: View {
    // MARK: - Properties
    /// The progress being tracked, ranging from 0.0 (no progress) to 1.0 (complete), using a binding for dynamic updates.
    var progress: Double
    
    
    // MARK: - Body
    var body: some View { 
        ProgressView(value: progress / 100,
                     label: {
                        Text("\(Int(progress))%")
                .foregroundColor(progress == 0.0 ? .gray : .green) // Sets the color of the percentage text to green.
                     })
        .tint(.green) // Applies a green tint to the progress bar itself.
    }
}

// MARK: - Preview
#Preview {
    ProgressBar(progress: 0.7)
}
