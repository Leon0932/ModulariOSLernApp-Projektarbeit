//
//  ModuleDetailHelpers.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 28.04.24.
//

import SwiftUI


/// A view that displays details for a single module including its sections and time allocation.
extension ModuleDetailView {
    var totalSections: Int {
        viewModel.module.sections.count
    }
    
    var completedSections: Int {
        viewModel.module.completedSections
    }
    
    var completedSectionsBinding: Binding<Int> {
        $viewModel.module.completedSections
    }
    
    var moduleTitle: String {
        viewModel.module.title
    }
    
    var moduleTime: Int {
        viewModel.module.time
    }
    
    var sections: [Section] {
        viewModel.module.sections
    }
}



/// Displays a section with the time for the module and the total number of sections.
extension ModuleDetailView {
    struct ClockSection: View {
        let time: Int
        let totalSections: Int
        
        var body: some View {
            HStack {
                clockView
                Spacer()
                sectionsCountView
            }
            .font(.title3)
        }
        
        /// View for displaying the clock icon and time.
        private var clockView: some View {
            HStack {
                Image(systemName: "clock.fill")
                Text("\(time)min")
                    .foregroundColor(.primary)
            }
            .foregroundColor(.accentColor)
        }
        
        /// View for displaying the count of sections.
        private var sectionsCountView: some View {
            Text("\(totalSections) \(totalSections == 1 ? "Section" : "Sections")")
        }
    }
}

