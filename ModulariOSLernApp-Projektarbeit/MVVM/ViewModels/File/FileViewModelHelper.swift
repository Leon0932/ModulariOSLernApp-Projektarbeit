//
//  FileViewModelHelper.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 30.05.24.
//

import Foundation

extension FileViewModel {
    /// Handles the import of a file.
    ///
    /// - Parameter result: The result of the file import operation.
    func handleImport(result: Result<[URL], Error>) {
        do {
            guard let selectedFile = try result.get().first else { return }
            let importedData = try Data(contentsOf: selectedFile)
            try profileViewModel?.importData(from: importedData)
            showAlertMessage("Import successful ✅")
        } catch {
            showAlertMessage("Import failed ☹️:\n\(error.localizedDescription)")
        }
    }
    
    /// Handles the export of a file.
    ///
    /// - Parameter result: The result of the file export operation.
    func handleExport(result: Result<URL, Error>) {
        switch result {
        case .success(_):
            showAlertMessage("Export successful ✅")
        case .failure(let error):
            showAlertMessage("Export failed ☹️:\n\(error.localizedDescription)")
        }
    }

    /// Exports the data.
    func exportData() {
        if let jsonData = profileViewModel?.exportData() {
            exportedData = jsonData
            isExporting.toggle()
        } else {
            showAlertMessage("Failed to export data ☹️")
        }
    }
    
    /// Displays an alert message.
    ///
    /// - Parameter message: The message to display in the alert.
    func showAlertMessage(_ message: String) {
        showAlert.toggle()
        alertMessage = message
    }
    
    /// Toggles the import state.
    func showImport() {
        isImporting.toggle()
    }
}
