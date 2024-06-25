//
//  MainView.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 30.05.24.
//

import SwiftUI

/// The main interface of the application, containing a tab bar with different sections.
struct MainView: View {
    @Environment(\.scenePhase) var scenePhase
    
    @EnvironmentObject var modulesViewModel: ModulesViewModel
    @EnvironmentObject var profileViewModel: ProfileViewModel
    
    var body: some View {
        TabView {
            ModulesView()
                .tabItem {
                    Label("Modules", systemImage: "books.vertical.fill")
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle.fill")
                }
        }
        .onChange(of: scenePhase, modulesViewModel.saveModules)
    }
}

struct MainViewWrapper: View {
    @StateObject private var modulesViewModel = ModulesViewModel()
    @StateObject private var fileViewModel = FileViewModel()
    @EnvironmentObject var profileViewModel: ProfileViewModel

    var body: some View {
        MainView()
            .environmentObject(modulesViewModel)
            .environmentObject(fileViewModel)
            .onAppear(perform: performOnAppear)
    }
}

extension MainViewWrapper {
    func performOnAppear() {
        if profileViewModel.modulesViewModel == nil {
            profileViewModel.setModulesViewModel(modulesViewModel)
        }
        
        if fileViewModel.profileViewModel == nil {
            fileViewModel.profileViewModel = profileViewModel
            
        }
    }
}
