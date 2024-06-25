//
//  FileViewModel.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 30.05.24.
//

import SwiftUI

class FileViewModel: ObservableObject {
    @Published var isImporting = false
    @Published var isExporting = false
    
    @Published var exportedData: Data?
    
    @Published var showAlert = false
    @Published var alertMessage = ""
    
    var profileViewModel: ProfileViewModel? = nil
    
    
    init() {
        print("FileViewModel was created")
    }
     
}

