//
//  ModuleViewModelHelper.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 30.05.24.
//

import Foundation

// MARK: - Extension for Module Interactions
extension ModuleViewModel {
    
    /// Toggles the state of the expanded section based on the given ID.
    ///
    /// - Parameter id: The ID of the section to be toggled.
    func toggleSection(for id: Int) {
        expandedSectionID = (expandedSectionID == id) ? nil : id
    }
    
    /// Updates a subsection within the module and recalculates the progress.
    ///
    /// - Parameter subsection: The subsection to be updated.
    func updateSubsection(subsection: Subsection) {
        for (sectionIndex, section) in module.sections.enumerated() {
            if let subIndex = section.subsections.firstIndex(where: { $0.id == subsection.id }) {
                var updatedSubsection = subsection
                updatedSubsection.isCompleted = true
                module.sections[sectionIndex].subsections[subIndex] = updatedSubsection
                updateProgress(in: sectionIndex)
                return
            }
        }
    }
    
    /// Updates the progress of a section and the entire module.
    ///
    /// - Parameter sectionIndex: The index of the section whose progress needs to be updated.
    private func updateProgress(in sectionIndex: Int) {
        var section = module.sections[sectionIndex]
        section.completedSubsections += 1
        module.sections[sectionIndex] = section
        
        let completedSubsections = section.completedSubsections
        let totalSubsections = section.subsections.count
        
        if completedSubsections == totalSubsections {
            module.completedSections += 1
        }
        
        // Calculate the overall progress of the module.
        let completedSubsectionsInModule = module.sections.reduce(0) { $0 + $1.completedSubsections }
        let totalSubsectionsInModule = module.sections.reduce(0) { $0 + $1.subsections.count }
        
        module.progress = (Double(completedSubsectionsInModule) / Double(totalSubsectionsInModule)) * 100.0
        
        // Update the parent ModulesViewModel, if available.
        modulesViewModel?.updateModule(module: module)
    }
    
    /// Creates a `SubsectionViewModel` for the specified subsection.
    ///
    /// - Parameter subsection: The subsection to create a view model for.
    /// - Returns: A new `SubsectionViewModel` instance.
    func createSubsectionViewModel(for subsection: Subsection) -> SubsectionViewModel {
        return SubsectionViewModel(subsection: subsection, parentViewModel: self)
    }
}
