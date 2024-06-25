//
//  ProfileViewModelHelper.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 30.05.24.
//

import Foundation

// MARK: - Profile Management
extension ProfileViewModel {
    
    /// Sets the `ModulesViewModel` for the profile.
    ///
    /// - Parameter viewModel: The `ModulesViewModel` to set.
    func setModulesViewModel(_ viewModel: ModulesViewModel) {
        self.modulesViewModel = viewModel
    }
    
    /// Loads the user profile from persistent storage.
    func loadProfile() {
        guard let userData = userProfileData,
              let loadedProfile: UserProfile = jsonManager.decode(userData) else { return }
        userProfile = loadedProfile
    }
    
    /// Saves the user profile to persistent storage.
    func saveProfile() {
        UserDefaultsManager.shared.set(userProfile, forKey: "userProfile")
        profileCreated = true
    }
    
    /// Deletes the user profile from persistent storage and resets the ViewModel.
    func deleteProfile() {
        UserDefaultsManager.shared.remove(forKey: "userProfile")
        userProfile = UserProfile()
        profileCreated = false
        modulesViewModel = nil
        
        if JSONManager.shared.deleteAllFiles() == .error {
            print("Error deleting files")
        }
    }
    
    /// Toggles the name change state and saves the profile if name change is completed.
    func changeName() {
        if showEditName {
            saveProfile()
        }
        showEditName.toggle()
    }
    
    /// Toggles the alert state.
    func showAlarm() {
        showAlert.toggle()
    }
    
    /// Exports user data including profile and modules.
    ///
    /// - Returns: A `Data` object containing the exported data, or `nil` if encoding fails.
    func exportData() -> Data? {
        struct ExportData: Codable {
            let profile: UserProfile
            let modules: [Module]
        }
        
        guard let modules = modulesViewModel?.modules else { return nil }
        
        let exportData = ExportData(profile: userProfile, modules: modules)
        return jsonManager.exportData(exportData)
    }
    
    /// Imports user data from JSON.
    ///
    /// - Parameter jsonData: The JSON data to import.
    /// - Throws: An error if decoding fails.
    func importData(from jsonData: Data) throws {
        struct ImportData: Codable {
            let profile: UserProfile
            let modules: [Module]
        }
        
        let importData: ImportData = try jsonManager.importData(from: jsonData)
        
        userProfile = importData.profile
        saveProfile()
        
        modulesViewModel?.modules = importData.modules
        _ = jsonManager.saveDataInInternalFS(filename: "modules.json",
                                             data: importData.modules)
    }
}

