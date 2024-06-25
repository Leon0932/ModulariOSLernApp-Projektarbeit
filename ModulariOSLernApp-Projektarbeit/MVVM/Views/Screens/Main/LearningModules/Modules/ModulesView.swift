//
//  ModulsView.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 02.04.24.
//

import SwiftUI

// MARK: - Modules View
/// Eine Ansicht, die Module anzeigt und es Benutzern ermöglicht, zwischen verschiedenen Modulen und Schwierigkeitsgraden zu wählen.
struct ModulesView: View {
    @EnvironmentObject var profileViewModel: ProfileViewModel
    @EnvironmentObject var modulesViewModel: ModulesViewModel
    
    var body: some View {
        NavigationStack {
            content
                .navigationTitle("Modules for \(currentModule.title)")
                .toolbar { topBar }
                .padding(.horizontal)
                .centeredProgressView(isShowing: $modulesViewModel.isLoading)
                .animation(.smooth, value: currentModule)
        }
    }
}

// MARK: - UI Components
extension ModulesView {
    private var content: some View {
        VStack(spacing: 48) {
            moduleSelectionView
            contentListView
        }
    }
    
    private var moduleSelectionView: some View {
        VStack(alignment: .leading, spacing: 8) {
            Title("Difficulty")
            DifficultyPicker(selected: currentModule == .swift
                             ? selectionSwiftBinding
                             : selectionSwiftUIBinding)
        }
        .padding(.top, 40)
    }
    
    private var contentListView: some View {
        VStack(alignment: .leading, spacing: 8) {
            Title("Content")
            customListView
        }
    }
    
    private var customListView: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ForEach(filteredModules, content: customListRow)
            }
        }
    }
    
    @ViewBuilder
    private func customListRow(_ module: Module) -> some View {
        NavigationLink(destination: ModuleDetailView(viewModel: modulesViewModel.createModuleDetailViewModel(module: module))) {
            ModuleRowView(module: module)
        }
    }
    
    private var topBar: some ToolbarContent {
        ToolbarItem(placement: .navigationBarTrailing) {
            Button(action: modulesViewModel.switchModule) {
                Label("Switch to \(currentModule.switchToModule.title)", 
                      systemImage: "arrow.left.arrow.right")
            }
        }
    }
}

#Preview {
    ModulesView()
}

