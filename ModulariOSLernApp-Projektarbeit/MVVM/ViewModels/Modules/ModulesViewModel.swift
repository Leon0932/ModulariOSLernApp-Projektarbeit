//
//  NModulesViewModel.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 21.04.24.
//

import Foundation
import SwiftUI


/// ViewModel for modules, managing the modules and their loading status.
class ModulesViewModel: ObservableObject {
    // MARK: - Properties
    @Published var modules: [Module] = []
    @Published var isLoading: AppState = .done
    @Published var newData: Bool = false
    @Published var currentModule: ModuleType = .swift
    
    let jsonManager: JSONManager = JSONManager.shared
    
    // MARK: - Initialization
    /// Initializes the ViewModel and loads the modules from a JSON file.
    init() {
        performInitialLoading()
        print("ModulesViewModel was created")
    }
}
