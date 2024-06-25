//
//  CenteredProgressViewModifier.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 12.04.24.
//

import SwiftUI

/// A custom view modifier that overlays a centered progress view on the content view when active.
struct CenteredProgressViewModifier: ViewModifier {
    @Environment(\.colorScheme) var colorScheme
    
    @Binding var isShowing: AppState
    
    func body(content: Content) -> some View {
        ZStack {
            content
                .disabled(isShowing == .loading)
                .blur(radius: isShowing == .loading ? 3 : 0)
            
            if isShowing == .loading {
                ProgressView()
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 15))
                    .foregroundColor(colorScheme == .dark ? .black : .white)
                    .progressViewStyle(.circular)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(colorScheme == .dark ? Color.gray.opacity(0.2).ignoresSafeArea() : Color.gray.opacity(0.5).ignoresSafeArea())
            }
        }
    }
}

/// An extension on `View` to easily add the centered progress view with a single method call.
extension View {
    /// Wraps the content in a `CenteredProgressViewModifier` to provide a loading overlay.
    func centeredProgressView(isShowing: Binding<AppState>) -> some View {
        self.modifier(CenteredProgressViewModifier(isShowing: isShowing))
    }
}
