//
//  DifficultyPicker.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 14.04.24.
//

import SwiftUI

/// A view component that provides a segmented control for selecting a difficulty level.
struct DifficultyPicker: View {
    // MARK: - Properties
    /// A binding to the currently selected difficulty level.
    @Binding var selected: Difficulty
    
    // MARK: - Body
    var body: some View {
        Picker("Difficulty", selection: $selected) {
            // Dynamically creates picker segments for each possible selection.
            ForEach(Difficulty.allCases, id: \.self) { selection in
                Text(selection.rawValue) // Display the raw value of the enum case as the label.
                    .tag(selection) // Assigns each segment a tag corresponding to its enum case.
            }
        }
        .pickerStyle(SegmentedPickerStyle()) // Sets the picker's style to be segmented.
    }
}

// MARK: - Preview
#Preview {
    DifficultyPicker(selected: .constant(.beginner))
}
