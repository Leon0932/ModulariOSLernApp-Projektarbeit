//
//  StringExtensions.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 23.05.24.
//

import Foundation
import SwiftUI

extension String {
    func removingAllWhitespacesAndNewlines() -> String {
        return self.replacingOccurrences(of: "\\s+", with: "", options: .regularExpression)
    }
    
}
