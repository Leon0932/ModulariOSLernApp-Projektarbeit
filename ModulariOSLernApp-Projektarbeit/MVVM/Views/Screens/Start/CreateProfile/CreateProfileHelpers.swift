//
//  CreateProfileAttributes.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 28.04.24.
//

import SwiftUI

extension CreateProfileView {
    var profileNameBinding: Binding<String> {
        $profileViewModel.userProfile.profileName
    }
    
    var profileName: String {
        profileViewModel.userProfile.profileName
    }
    
    var selectionSwift: Binding<Difficulty> {
        $profileViewModel.userProfile.selectionSwift
    }
    
    var selectionSwiftUI: Binding<Difficulty> {
        $profileViewModel.userProfile.selectionSwiftUI
    }
}

/// Subview for choosing a proficiency level in a particular topic.
extension CreateProfileView {
    struct ChooseLevelSection: View {
        let title: String
        @Binding var selection: Difficulty
        
        var body: some View {
            VStack(alignment: .leading, spacing: 8) {
                Text(title)
                    .font(.title3)
                DifficultyPicker(selected: $selection)
            }
        }
    }
}
