//
//  UserProfile.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 12.04.24.
//

import Foundation

struct UserProfile: Codable {
    var profileName: String = ""
    var selectionSwift: Difficulty = .beginner
    var selectionSwiftUI: Difficulty = .beginner
   
}
