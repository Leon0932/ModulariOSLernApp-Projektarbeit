//
//  SingleModulView.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 06.04.24.
//

import SwiftUI

/// A view that displays details for a single module including its sections and time allocation.
struct ModuleDetailView: View {
    @ObservedObject var viewModel: ModuleViewModel
    
    var body: some View {
        NavigationStack {
            ScrollView {
                content
            }
            .navigationTitle(moduleTitle)
            .padding()
            .padding(.top, 16)
            
        }
    }
    
    private var content: some View {
        VStack(alignment: .leading, spacing: 40) {
            ClockSection(time: moduleTime, totalSections: totalSections)
            ProgressSectionView(totalSections: totalSections, completedSections: completedSectionsBinding)
            sectionsListView
        }
    }
    
    private var sectionsListView: some View {
        VStack(spacing: 8) {
            ForEach(sections, content: sectionRow)
        }
    }
    
    
    private func sectionRow(for section: Section) -> some View {
        var label: String {
            "\(section.title) (\( section.completedSubsections) / \( section.subsections.count))"
        }
        
        var isExpanded: Binding<Bool> {
            Binding<Bool>(
                get: { viewModel.expandedSectionID == section.id },
                set: { _ in viewModel.toggleSection(for: section.id) }
            )
        }
        
        return CustomDisclosureGroup(isExpanded: isExpanded,
                                     label: label) {
            VStack(spacing: 8) {
                ForEach(section.subsections, content: subsectionRow)
            }
        }
    }
    
    func subsectionRow(for subsection: Subsection) -> some View {
        NavigationLink(destination:
                        SubsectionView(subsectionVM: viewModel.createSubsectionViewModel(for: subsection))
            
        ) {
            subsectionView(for: subsection)
            
        }
        
    }
    
    func subsectionView(for subsection: Subsection) -> some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Text(subsection.title)
                Spacer()
                Image(systemName: "checkmark.circle.fill")
                    .foregroundColor(.green)
                    .opacity(subsection.isCompleted ? 1 : 0)
                Image(systemName: "chevron.right")
            }
        
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
    }
}
