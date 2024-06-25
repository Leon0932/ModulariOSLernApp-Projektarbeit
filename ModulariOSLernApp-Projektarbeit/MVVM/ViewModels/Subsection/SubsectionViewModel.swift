//
//  SubsectionViewModel.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 21.04.24.
//

import Foundation

/// ViewModel for managing the details of a subsection of a module.
class SubsectionViewModel: ObservableObject {
    // MARK: - Published Properties
    @Published var codeText: String = ""
    @Published var result: String = ""
    @Published var isLoading: AppState = .done
    @Published var wasLoaded = false
    @Published var showsSafariView = false
    
    @Published var subsection: Subsection
    var parentViewModel: ModuleViewModel?
    var moduleType: ModuleType
    
    // MARK: - Initialization
    /// Initializes the ViewModel with a subsection and an optional parent ModuleViewModel.
    ///
    /// - Parameters:
    ///   - subsection: The subsection to be managed.
    ///   - parentViewModel: The parent ModuleViewModel (optional).
    init(subsection: Subsection, parentViewModel: ModuleViewModel?) {
        self.subsection = subsection
        self.parentViewModel = parentViewModel
        self.moduleType = parentViewModel?.module.moduleType ?? .swift
    }
}


