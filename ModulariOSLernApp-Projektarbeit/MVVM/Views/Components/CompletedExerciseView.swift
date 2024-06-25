//
//  CompletedExerciseView.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 23.05.24.
//

import SwiftUI

struct CompletedExerciseView: View {
    var body: some View {
        Text("This subsection is finished.\nYou can go back or continue coding here.")
            .frame(maxWidth: .infinity, alignment: .center)
            .font(.body)
            .foregroundColor(.green)
            .multilineTextAlignment(.center)
    }
}

#Preview {
    CompletedExerciseView()
}
