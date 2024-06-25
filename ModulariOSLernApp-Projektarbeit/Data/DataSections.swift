//
//  TestSections.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 17.05.24.
//

import Foundation

let sectionsModule1IntroductionToSwift = Section(
    id: 1,
    title: "Swift Basics",
    subsections: subsectionsModule1
)

let sectionsModule2: [Section] = [
    Section(id: 1, title: "Variables and Constants", subsections: subsectionsModule2Introduction),
    Section(id: 2, title: "Datatypes", subsections: subsectionsModule2DataTypes),
    Section(id: 3, title: "Operators", subsections: subsectionsModule2Operators),
    Section(id: 4, title: "Enumerations", subsections: subsectionsModule2Enums)
]

let sectionsModule3: [Section] = [
    Section(id: 1, title: "Conditionals", subsections: subsectionsModule2If),
    Section(id: 2, title: "Loops", subsections: subsectionsModule2Loops),
    Section(id: 3, title: "Control Transfers", subsections: subsectionsModule2ControlTransfer)
]

let sectionsModule4: [Section] = [
    Section(id: 1, title: "Introduction", subsections: subsectionsModule3Intro),
    Section(id: 2, title: "Specify Argument/Parameters", subsections: subsectionsModule3ParAnd),
    Section(id: 3, title: "Function Types", subsections: subsectionsModule3Func)
]

let sectionsModule5: [Section] = [
    Section(id: 1, title: "Fundamentals", subsections: subsectionsModule5Op),

]

let sectionsModule6: [Section] = [
    Section(id: 1, title: "Start", subsections: subsectionsModule6Start),
    Section(id: 2, title: "Arrays", subsections: subsectionsModule6Array),
    Section(id: 3, title: "Sets", subsections: subsectionsModule6Sets),
    Section(id: 4, title: "Dictonaries", subsections: subsectionsModule6Dic)

]

let sectionsModule7: [Section] = [
    Section(id: 1, title: "Classes and Structure", subsections: subsectionsModule7classAndStruct),
    Section(id: 2, title: "Declaration", subsections: subsectionsModule7Nr2),
    Section(id: 3, title: "Inheritance", subsections: subsectionsModule7Nr4),
    Section(id: 4, title: "Protocols", subsections: subsectionsModule7Nr3),
    Section(id: 5, title: "Extensions", subsections: subsectionsModule7Nr5),
]

let sectionsModule8: [Section] = [
    Section(id: 1, title: "Fundamentals", subsections: subsectionsModule8Error),
]

let sectionsModule9: [Section] = [
    Section(id: 1, title: "Closures", subsections: subsectionsModule9Closures),
    Section(id: 2, title: "Generics", subsections: subsections9Generics)
]

let sectionsModule10: [Section] = [
    Section(id: 1, title: "Property Observers", subsections: subsectionsModule10Prop),
    Section(id: 2, title: "Type Casting", subsections: subsectionsModule10Type),
]

let sectionsModule11: [Section] = [
    Section(id: 1, title: "Basics", subsections: subsectionsModule11Basics),
    Section(id: 2, title: "Layouts", subsections: subsectionsModule11Layouts)
]

let sectionsModule12: [Section] = [
    Section(id: 1, title: "State and Binding", subsections: subsectionsModule12State),
    Section(id: 2, title: "Objects", subsections: subsectionsModule12Objects)

]


let sectionsModule13: [Section] = [
    Section(id: 1, title: "Interactive Components", subsections: subsectionsModule13Components1)
]

let sectionsModule14: [Section] = [
    Section(id: 1, title: "NavigationStacks and Links", subsections: subsectionsModule14NavigationViews)

]

let sectionsModule15: [Section] = [
    Section(id: 1, title: "Animations", subsections: subsectionsModule15Animations)
]
