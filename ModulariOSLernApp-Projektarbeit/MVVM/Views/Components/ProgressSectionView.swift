//
//  ProgressSectionView.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 06.04.24.
//

import SwiftUI

/// A view that displays a progress bar to visualize progress through various sections.
struct ProgressSectionView: View {
    // MARK: - Constants
    /// The total number of sections.
    let totalSections: Int
    
    // MARK: - State
    /// The number of sections that have been completed, bindable to react to changes.
    @Binding var completedSections: Int
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            progressHeader
            progressBar
        }
    }
}

// MARK: - Subviews
private extension ProgressSectionView {
    /// The header area of the progress display, consisting of an indicator and text.
    var progressHeader: some View {
        HStack(spacing: 5) {
            completionIndicator
            completionText
            Text("of \(totalSections) \(totalSections == 1 ? "section" : "sections") completed")
                .font(.callout)
        }
    }
    
    /// The visual representation of the progress bar.
    var progressBar: some View {
        HStack {
            ForEach(0..<totalSections, id: \.self) { sectionIndex in
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(color(for: sectionIndex))
                    .frame(maxWidth: .infinity, maxHeight: 7)
            }
        }
        .frame(height: 20)
    }
    
    /// The indicator for completing all sections.
    var completionIndicator: some View {
        Group {
            if totalSections == completedSections {
                Image(systemName: "checkmark.circle.fill")
                    .foregroundColor(.green)
            }
        }
    }
    
    /// Text displaying the number of sections completed.
    var completionText: some View {
        Text("\(completedSections)")
            .foregroundColor(totalSections == completedSections ? .green : .primary)
    }
    
    /// Determines the color of each section in the progress bar.
    func color(for sectionIndex: Int) -> Color {
        sectionIndex < completedSections ? .green : .gray.opacity(0.2)
    }
}

// MARK: - Preview
#Preview {
    ProgressSectionView(totalSections: 9, completedSections: .constant(7))
}
