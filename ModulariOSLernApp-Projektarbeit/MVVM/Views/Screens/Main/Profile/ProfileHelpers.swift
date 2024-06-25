//
//  ProfileHelpers.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 28.04.24.
//

import SwiftUI

/// A view that displays the user's profile information and provides options to edit and delete the profile.
extension ProfileView {
    var profileNameBinding: Binding<String> {
        $profileViewModel.userProfile.profileName
    }
    
    var profileName: String {
        profileViewModel.userProfile.profileName
    }
    
    var editNameButtonText: String {
        profileViewModel.showEditName ? "Change name" : "Edit name"
    }
}


extension ProfileView {
    struct ProfileSectionRow<Content: View>: View {
        let title: String
        var titleStyle: Color = .primary
        let buttonText: String?
        let buttonAction: (() -> Void)?
        let content: (() -> Content)?
        
        var body: some View {
            
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Text(title)
                        .foregroundStyle(titleStyle)
                    Spacer()
                    
                    if let text = buttonText, let action = buttonAction {
                        Button(text,
                               action: action)
                        .bold()
                    }
                    
                }
                .font(.title3)
                
                Divider().background(Color.gray)
                
                if let view = content {
                    view()
                }
            }
        }
    }
    
}
