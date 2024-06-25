//
//  CreateProfileView.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 07.04.24.
//

import SwiftUI

/// A view for creating a user profile, including name entry and proficiency level selection.
struct CreateProfileView: View {
    @EnvironmentObject var profileViewModel: ProfileViewModel // ViewModel that contains user profile data
    
    // MARK: Body -
    var body: some View {
        NavigationStack {
            content
                .padding()
                .navigationTitle("Create your profile")
        }
    }
    
    private var content: some View {
        VStack(alignment: .leading, spacing: 40) {
            nameEntryField
            proficiencyLevelSection
            Spacer()
            saveButton
        }
    }
    
    /// Text field for entering the user's profile name.
    private var nameEntryField: some View {
        return CustomTextField(title: "What is your name",
                               label: "Your profilename",
                               warningMessage: "Type in your profilename",
                               text: profileNameBinding)
        .padding(.top, 32)
    }
    
    /// Section for choosing proficiency levels in Swift and SwiftUI.
    private var proficiencyLevelSection: some View {
        
        VStack(alignment: .leading, spacing: 24) {
            Text("What is your level in")
                .font(.title3)
            ChooseLevelSection(title: "Swift",
                               selection: selectionSwift)
            ChooseLevelSection(title: "SwiftUI",
                               selection: selectionSwiftUI)
        }
    }
    
    /// Button to save the profile, disabled if the profile name is empty.
    private var saveButton: some View {
        CustomButton(title: "Save",
                     subText: "Settings can be changed",
                     buttonType: profileName.isEmpty ? .disabled : .primary,
                     action: profileViewModel.saveProfile)
        .disabled(profileName.isEmpty)
        .padding(.bottom, 60)
    }
}


