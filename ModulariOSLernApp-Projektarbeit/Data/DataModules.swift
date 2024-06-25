//
//  TestModules.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 17.05.24.
//

import Foundation

let testModules: [Module] = [swiftIntroductionModule1,
                             swiftIntroductionModule2,
                             swiftIntroductionModule3,
                             swiftIntroductionModule4,
                             swiftIntroductionModule5,
                             swiftIntroductionModule6,
                             swiftIntroductionModule7,
                             swiftIntroductionModule8,
                             swiftIntroductionModule9,
                             swiftIntroductionModule10,

                             swiftUIIntroductionModule1,
                             swiftUIIntroductionModule2,
                             swiftUIIntroductionModule3,
                             swiftUIIntroductionModule4,
                             swiftUIIntroductionModule5]

/* Swift Modules
 
 */
let swiftIntroductionModule1 = Module(
    id: 1,
    title: "Introduction to Swift",
    time: 10,
    moduleType: .swift,
    difficulty: .beginner,
    sections: [sectionsModule1IntroductionToSwift]
)

// Module 2
let swiftIntroductionModule2 = Module(
    id: 2,
    title: "Basic concepts in Swift",
    time: 45,
    moduleType: .swift,
    difficulty: .beginner,
    sections: sectionsModule2)


// Module 3
let swiftIntroductionModule3 = Module(
    id: 3,
    title: "Control Flows",
    time: 60,
    moduleType: .swift,
    difficulty: .beginner,
    sections: sectionsModule3)

// Module 4
let swiftIntroductionModule4 = Module(
    id: 4,
    title: "Functions",
    time: 70,
    moduleType: .swift,
    difficulty: .beginner,
    sections: sectionsModule4)

let swiftIntroductionModule5 = Module(
    id: 5,
    title: "Optionals",
    time: 60,
    moduleType: .swift,
    difficulty: .intermediate,
    sections: sectionsModule5)

let swiftIntroductionModule6 = Module(
    id: 6,
    title: "Collection Types",
    time: 80,
    moduleType: .swift,
    difficulty: .intermediate,
    sections: sectionsModule6)

let swiftIntroductionModule7 = Module(
    id: 7,
    title: "Object oriented programing",
    time: 120,
    moduleType: .swift,
    difficulty: .intermediate,
    sections: sectionsModule7)

let swiftIntroductionModule8 = Module(
    id: 8,
    title: "Error Handling",
    time: 45,
    moduleType: .swift,
    difficulty: .intermediate,
    sections: sectionsModule8)

let swiftIntroductionModule9 = Module(
    id: 9,
    title: "Functional Programming",
    time: 90,
    moduleType: .swift,
    difficulty: .advanced,
    sections: sectionsModule9)

let swiftIntroductionModule10 = Module(
    id: 10,
    title: "Advanced Swift-Lectures",
    time: 60,
    moduleType: .swift,
    difficulty: .advanced,
    sections: sectionsModule10)

/* SwiftUI Modules
 
 */
let swiftUIIntroductionModule1 = Module(
    id: 11,
    title: "Introduction to SwiftUI",
    time: 45,
    moduleType: .swiftUI,
    difficulty: .beginner,
    sections: sectionsModule11)

let swiftUIIntroductionModule2 = Module(
    id: 12,
    title: "State Management in SwiftUI",
    time: 70,
    moduleType: .swiftUI,
    difficulty: .beginner,
    sections: sectionsModule12)


let swiftUIIntroductionModule3 = Module(
    id: 13,
    title: "Components in SwiftUI",
    time: 60,
    moduleType: .swiftUI,
    difficulty: .beginner,
    sections: sectionsModule13)

let swiftUIIntroductionModule4 = Module(
    id: 13,
    title: "Navigations and Views",
    time: 80,
    moduleType: .swiftUI,
    difficulty: .intermediate,
    sections: sectionsModule14)

let swiftUIIntroductionModule5 = Module(
    id: 13,
    title: "Advanced SwiftUI-Lectures",
    time: 60,
    moduleType: .swiftUI,
    difficulty: .advanced,
    sections: sectionsModule15)
