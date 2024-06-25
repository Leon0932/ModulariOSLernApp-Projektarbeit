//
//  UserDefaultsManager.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 12.06.24.
//

import Foundation

final class UserDefaultsManager {
    static let shared = UserDefaultsManager()
    
    private init() {}
    
    // Speichert Daten in UserDefaults
    func set<T: Codable>(_ value: T, forKey key: String) {
        if let data = JSONManager.shared.encode(value) {
            UserDefaults.standard.set(data, forKey: key)
        }
    }
    
    // Lädt Daten aus UserDefaults
    func get<T: Codable>(forKey key: String, type: T.Type) -> T? {
        guard let data = UserDefaults.standard.data(forKey: key) else {
            return nil
        }
        return JSONManager.shared.decode(data)
    }
    
    // Entfernt Daten aus UserDefaults
    func remove(forKey key: String) {
        UserDefaults.standard.removeObject(forKey: key)
    }
}
