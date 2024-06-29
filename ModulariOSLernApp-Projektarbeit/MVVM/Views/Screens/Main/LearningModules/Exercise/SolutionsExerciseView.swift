//
//  SolutionsExerciseView.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 23.05.24.
//

import SwiftUI

struct SolutionsExerciseView: View {
    var solutions: [String]
    @State private var isCopied: Bool = false
    
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Solutions")
                    .font(.title)
                
                ForEach(solutions, id: \.self, content: rowElement)
                
                Text("Double tap to copy the code to clipboard.")
                    .font(.footnote)
                
                
            }
            .padding()
            .padding(.top, 24)
        }
    }
    
    func rowElement(for solution: String) -> some View {
        VStack(alignment: .leading, spacing: 16) {
            CustomCodeText(codeText: .constant(solution), status: .constant(.success), language: .swift)
                .onTapGesture(count: 2) {
                    // Source: https://xavier7t.com/copy-to-clipboard-in-swiftui
                    let pasteboard = UIPasteboard.general
                    pasteboard.string = solution
                    withAnimation {
                        isCopied = true
                    }
                    DispatchQueue.main.asyncAfter(wallDeadline: .now() + 3) {
                        withAnimation {
                            isCopied = false
                        }
                    }
                }
            
            if isCopied {
                Text("Copied!")
                    .foregroundColor(.white)
                    .bold()
                    .font(.footnote)
                    .frame(width: 70, height: 20)
                    .padding()
                    .background(Color.green.cornerRadius(8))
            }
        }
    }
}

#Preview {
    SolutionsExerciseView(solutions: [])
}
