//
//  CreateProfileViewModel.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 12.04.24.
//

import Foundation
import SwiftUI

/// ViewModel for managing the user profile.
class ProfileViewModel: ObservableObject {
    // MARK: - Private Storage
    @AppStorage("userProfile") var userProfileData: Data? {
        didSet {
            loadProfile()
        }
    }
    
    // MARK: - Published Properties
    @Published var userProfile: UserProfile = UserProfile()
    @Published var profileCreated = false
    
    @Published var showEditName = false
    
    @Published var showAlert = false
    @Published var alertMessage = ""
    
    var modulesViewModel: ModulesViewModel? = nil
    var jsonManager = JSONManager.shared
    
    // MARK: - Initialization
    /// Initializes the ViewModel and loads the profile.
    init() {
        print("ProfileViewModel was created")
        loadProfile()
    }
}



