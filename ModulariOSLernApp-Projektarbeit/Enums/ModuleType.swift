//
//  ModuleType.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 20.04.24.
//

import Foundation

// Define module types using enum to avoid string comparison errors.
enum ModuleType: String, Codable {
    case swift = "Swift"
    case swiftUI = "SwiftUI"
}

extension ModuleType {
    /// Toggles between Swift and SwiftUI modules
    var switchToModule: ModuleType {
        switch self {
        case .swift: return .swiftUI
        case .swiftUI: return .swift
        }
    }
    
    /// Returns the raw value of the enum as title
    var title: String {
        return self.rawValue
    }
}
