//
//  ModulesViewModelHelper.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 30.05.24.
//

import Foundation
import SwiftUI

// MARK: - Methods
extension ModulesViewModel {
    /// Loads data from the internal file system.
    /// If none is present, meaning an account was created, load from the repository.
    func performInitialLoading() {
        let (loadedModules, _): ([Module], ResultType) = jsonManager.loadDataFromInternalFileSystem(fileName: "modules.json")
        
        if loadedModules.isEmpty {
            if let repoData: [Module] = jsonManager.loadDataFromRepo(fileName: "finalModules") {
                modules = repoData
            }
        } else {
            modules = loadedModules
        }
    }
    
    /// Creates a `ModuleViewModel` for the specified module.
    ///
    /// - Parameter module: The module to create a view model for.
    /// - Returns: A new `ModuleViewModel` instance.
    func createModuleDetailViewModel(module: Module) -> ModuleViewModel {
        return ModuleViewModel(module: module, modulesViewModel: self)
    }
    
    /// Updates a module in the `modules` array if it exists.
    ///
    /// - Parameter module: The module to be updated.
    func updateModule(module: Module) {
        if let index = modules.firstIndex(where: { $0.id == module.id }) {
            modules[index] = module
            newData = true
        }
        
 
    }
    
    /// Switches the current module to the next module.
    func switchModule() {
        currentModule = currentModule.switchToModule
    }
    
    /// Saves the modules when the scene phase changes.
    ///
    /// - Parameters:
    ///   - oldValue: The previous scene phase.
    ///   - newValue: The new scene phase.
    func saveModules(_ oldValue: ScenePhase, _ newValue: ScenePhase) {
        if (newValue == .background || newValue == .inactive) && newData {
            _ = jsonManager.saveDataInInternalFS(filename: "modules.json", data: modules)
            newData = false
        }
    }
}

