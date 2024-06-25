//
//  InfoModalView.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 05.06.24.
//

import SwiftUI

struct InfoModalView: View {
    var info: String
    @Binding var showingModal: Bool
    
    var body: some View {
        VStack {
            Text(info)
                .padding()
                .multilineTextAlignment(.center)
            Button("Dismiss") {
                withAnimation {
                    showingModal = false
                }
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .frame(width: 300, height: 300)
        .background(Color.white)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 1)
        )
                 
    }
}
