//
//  NModuleViewModel.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 21.04.24.
//

import Foundation

/// ViewModel zur Verwaltung der Details eines einzelnen Moduls.
class ModuleViewModel: ObservableObject {
    // MARK: - Published Properties
    @Published var module: Module
    @Published var expandedSectionID: Int?
    
    // MARK: - Properties
    var modulesViewModel: ModulesViewModel?
    
    // MARK: - Initialization
    /// Initialisiert das ViewModel mit einem Modul und einer optionalen Referenz auf ein ModulesViewModel.
    ///
    /// - Parameters:
    ///   - module: Das zu verwaltende Modul.
    ///   - modulesViewModel: Das übergeordnete ModulesViewModel (optional).
    init(module: Module, modulesViewModel: ModulesViewModel?) {
        self.module = module
        self.modulesViewModel = modulesViewModel
    }
}




