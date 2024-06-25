//
//  SubsectionHelper.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 28.04.24.
//

import SwiftUI

/// A view that presents detailed information and interactivity for a specific subsection.
extension SubsectionView {
    var subsectionTitle: String {
        subsectionVM.subsection.title
        
    }
    
    var contentDescpription: String {
        subsectionVM.subsection.contentDescription
    }
    
    var contentCodeBinding: Binding<String> {
        $subsectionVM.subsection.contentCode
    }
    
    var contentCode: String {
        subsectionVM.subsection.contentCode
    }
    
    var linkDocumentation: String {
        subsectionVM.subsection.linkDocumentation
    }
    
    var resultBinding: Binding<String> {
        $subsectionVM.result
    }
    
    var codeExercise: CodeExercise? {
        subsectionVM.subsection.codeExercise
    }
}

// MARK: - Supporting Views
extension SubsectionView {    
    struct Description: View {
        var description: LocalizedStringKey
        @State var highlightText: Bool = false
        
        init(_ description: LocalizedStringKey) {
            self.description = description
        }
        
        var body: some View {
            Text(description)
        }
    }
}
