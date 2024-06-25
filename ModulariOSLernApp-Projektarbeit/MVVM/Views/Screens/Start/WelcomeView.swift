//
//  WelcomeView.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 06.04.24.
//

import SwiftUI

/// A view that welcomes new users and directs them to create a profile to start learning.
struct WelcomeView: View {
    @State private var showCreateProfile = false
    @EnvironmentObject var profileViewModel: ProfileViewModel
    
    var body: some View {
        NavigationStack {
            content
                .padding()
                .navigationTitle("Welcome to LearnSwift")
                .navigationDestination(isPresented: $showCreateProfile) { CreateProfileView() }
        }
    }
    
    /// Main content of the WelcomeView
    private var content: some View {
        VStack(alignment: .center, spacing: 20) {
            welcomeImage
            welcomeMessage
            Spacer()
            startButton
        }
    }
    
    /// Displays a welcome image.
    private var welcomeImage: some View {
        Image("Welcome")
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
    
    /// Displays a welcome message encouraging users to start learning.
    private var welcomeMessage: some View {
        Text("Start learning Swift and SwiftUI.\nYou don’t need previous knowledge")
            .font(.title2)
            .multilineTextAlignment(.center)
            .padding(.top)
    }
    
    /// A button that triggers navigation to the profile creation screen.
    private var startButton: some View {
        CustomButton(title: "Start") { showCreateProfile = true }
            .padding(.bottom, 60)
    }
}

#Preview {
    WelcomeView()
}

