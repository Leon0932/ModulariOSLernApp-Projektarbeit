//
//  ModulesHelpers.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 28.04.24.
//

import SwiftUI

// MARK: - Modules View
/// Eine Ansicht, die Module anzeigt und es Benutzern ermöglicht, zwischen verschiedenen Modulen und Schwierigkeitsgraden zu wählen.
extension ModulesView {
    var currentModule: ModuleType {
        modulesViewModel.currentModule
    }
    
    var modules: [Module] {
        modulesViewModel.modules
    }
    
    var selectionSwiftBinding: Binding<Difficulty> {
        $profileViewModel.userProfile.selectionSwift
    }
    
    var selectionSwiftUIBinding: Binding<Difficulty> {
        $profileViewModel.userProfile.selectionSwiftUI
    }
    
    var selectionSwift: Difficulty {
        profileViewModel.userProfile.selectionSwift
    }
    
    var selectionSwiftUI: Difficulty {
        profileViewModel.userProfile.selectionSwiftUI
    }
    
    var filteredModules: [Module] {
        switch currentModule {
        case .swift:
            return modules.filter { $0.moduleType == .swift && $0.difficulty == selectionSwift }
        case .swiftUI:
            return modules.filter { $0.moduleType == .swiftUI && $0.difficulty == selectionSwiftUI }
        }
    }
    
}

// MARK: - Supporting Views
extension ModulesView {
    struct Title: View {
        let title: String
        
        init(_ title: String) {
            self.title = title
        }
        
        var body: some View {
            Text(title)
                .font(.caption)
                .foregroundColor(.gray)
        }
    }
    
    struct ModuleRowView: View {
        @Environment(\.colorScheme) var colorScheme
        var module: Module
        
        var body: some View {
            VStack {
                HStack {
                    Text(module.title)
                        .foregroundColor(colorScheme == .dark ? .white : .black)
                        .font(.headline)
                        .padding()
                    Spacer()
                    
                    if module.progress == 100.0 {
                        Image(systemName: "checkmark.circle.fill").foregroundColor(.green)
                    }
                    
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                        .padding()
                }
                if module.progress != 100.0 {
                    ProgressBar(progress: module.progress)
                        .padding([.horizontal, .bottom])
                }
            }
            .background(Color.gray.opacity(0.1))
            .cornerRadius(10)
            .padding(.top, 5)
        }
    }
}



