//
//  ButtonType.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 20.04.24.
//

import Foundation
import SwiftUI

/// An enum that defines different button types with corresponding colors.
enum ButtonType {
    case primary, danger, finishing, disabled

    /// Provides the color associated with each button type.
    var color: Color {
        switch self {
        case .primary:
            return .blue
        case .danger:
            return .red
        case .finishing:
            return .green
        case .disabled:
            return .gray
        }
    }
}
