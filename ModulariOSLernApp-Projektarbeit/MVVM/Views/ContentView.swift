//
//  ContentView.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 02.04.24.
//

import SwiftUI
import CoreData

/// The main content view that determines which view to present based on whether user profile data exists.
struct ContentView: View {
    @AppStorage("userProfile") private var userProfileData: Data?
    @EnvironmentObject var profileViewModel: ProfileViewModel
    
    @State private var isUserProfileAvailable = false
    @State private var isInitialLoad = true
    
    var body: some View {
        Group {
            if isUserProfileAvailable {
                MainViewWrapper()
                    .transition(.move(edge: .trailing))
            } else {
                WelcomeView()
                    .transition(.move(edge: .leading))
            }
        }
        .onAppear(perform: performAppear)
        .onChange(of: userProfileData, performChange)
    }
}


extension ContentView {
    /// Called when the view appears.
    func performAppear() {
        isUserProfileAvailable = userProfileData != nil
        isInitialLoad = false
    }
    
    /// Called when `userProfileData` changes.
    ///
    /// - Parameters:
    ///   - oldValue: The old value of `userProfileData`.
    ///   - newValue: The new value of `userProfileData`.
    func performChange(_ oldValue: Data?, _ newValue: Data?) {
        if !isInitialLoad {
            withAnimation {
                isUserProfileAvailable = newValue != nil
            }
        }
    }
}

