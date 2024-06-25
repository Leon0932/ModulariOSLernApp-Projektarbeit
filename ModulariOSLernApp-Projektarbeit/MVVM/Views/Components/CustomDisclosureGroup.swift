//
//  CustomDisclosureGroup.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 10.04.24.
//

import SwiftUI

/// A custom view component that uses a `DisclosureGroup` to show and hide detailed content for a given section.
struct CustomDisclosureGroup<Content: View>: View {
    // MARK: - Properties
    /// A binding to control whether the disclosure group is expanded or collapsed.
    @Binding var isExpanded: Bool
    var label: String
    var content: () -> Content
    
    
    // MARK: - Body
    var body: some View {
        DisclosureGroup(label, 
                        isExpanded: $isExpanded,
                        content: content)
            .foregroundColor(.primary)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.gray.opacity(0.05))
            .cornerRadius(10)
    }
}
