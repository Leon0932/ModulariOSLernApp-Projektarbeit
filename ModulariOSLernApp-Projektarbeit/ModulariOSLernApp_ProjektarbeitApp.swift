//
//  ModulariOSLernApp_ProjektarbeitApp.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 02.04.24.
//

import SwiftUI

@main
struct ModulariOSLernApp_ProjektarbeitApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
