//
//  ProfileView.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 07.04.24.
//

import SwiftUI
import UniformTypeIdentifiers

/// A view that displays the user's profile information and provides options to edit and delete the profile.
struct ProfileView: View {
    @EnvironmentObject var profileViewModel: ProfileViewModel
    @EnvironmentObject var fileViewModel: FileViewModel
    
    var body: some View {
        NavigationStack {
            content
                .padding()
                .navigationTitle("Profile")
                .alert("Are you sure about that?",
                       isPresented: $profileViewModel.showAlert) {
                    Button("Delete",
                           role: .destructive,
                           action: profileViewModel.deleteProfile)
                }
                       .alert(fileViewModel.alertMessage, isPresented: $fileViewModel.showAlert) {
                           Button("OK", role: .cancel) { }
                       }
            
            
        }
    }
    
    private var content: some View {
        VStack(alignment: .leading, spacing: 48) {
            nameSection
            importFiles
            exportFiles
            deleteSection
            Spacer()
        }
    }
    
    
    
    private var nameSection: some View {
        ProfileSectionRow(title: "Your name",
                          buttonText: editNameButtonText,
                          buttonAction: profileViewModel.changeName) {
            Group {
                if profileViewModel.showEditName {
                    CustomTextField(title: "",
                                    label: "Your profile",
                                    warningMessage: "Type in your name",
                                    text: profileNameBinding)
                } else {
                    Text(profileName)
                }
            }
            .padding(.top, 8)
        }
                          .padding(.top, 32)
    }
    

    
    private var importFiles: some View {
        ProfileSectionRow<EmptyView>(title: "Import Data",
                                     buttonText: "Import",
                                     buttonAction: fileViewModel.showImport,
                                     content: nil)
        .fileImporter(
            isPresented: $fileViewModel.isImporting,
            allowedContentTypes: [.json],
            allowsMultipleSelection: false,
            onCompletion: fileViewModel.handleImport)
    }
    
    
    private var exportFiles: some View {
        ProfileSectionRow<EmptyView>(title: "Export Data",
                                     buttonText: "Export",
                                     buttonAction: fileViewModel.exportData,
                                     content: nil)
        .fileExporter(
            isPresented: $fileViewModel.isExporting,
            document: TextFileDocument(text: fileViewModel.exportedData ?? Data()),
            contentType: .json,
            defaultFilename: "profile_modules_export",
            onCompletion: fileViewModel.handleExport)
    }
    
    private var deleteSection: some View {
        ProfileSectionRow(title: "Delete",
                          titleStyle: .red,
                          buttonText: nil,
                          buttonAction: nil) {
            CustomButton(title: "Delete your profile",
                         buttonType: .danger) {
                profileViewModel.showAlarm()
            }
                         .padding(.top, 8)
        }
    }
}
