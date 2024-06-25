//
//  ModulariOSLernApp_ProjektarbeitApp.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 02.04.24.
//

import SwiftUI


@main
struct ModulariOSLernApp_ProjektarbeitApp: App {
    @StateObject private var profileViewModel = ProfileViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(profileViewModel)
        }
    }
}



