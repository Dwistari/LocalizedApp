//
//  LocalizationManager.swift
//  LocalizedApp
//
//  Created by Dwistari on 06/05/25.
//

import i18next

class LocalizationManager {
    static let shared = LocalizationManager()
    private let i18n = I18Next()
    
    func setup() {
        // Load JSON files from bundle
        guard
            let enPath = Bundle.main.path(forResource: "en", ofType: "json", inDirectory: "Locales"),
            let idPath = Bundle.main.path(forResource: "id", ofType: "json", inDirectory: "Locales"),
            let enData = try? Data(contentsOf: URL(fileURLWithPath: enPath)),
            let idData = try? Data(contentsOf: URL(fileURLWithPath: idPath)),
            let enDict = try? JSONSerialization.jsonObject(with: enData) as? [String: Any],
            let idDict = try? JSONSerialization.jsonObject(with: idData) as? [String: Any]
        else {
            print("Failed to load localization files!")
            return
        }
      
        // Configure i18next
        i18n.load(options: [
                "lang": "en", // Default language
                "resourcesStore": [
                    "en": ["translation": enDict],
                    "id": ["translation": idDict]
                ]
            ]) { error in
                if let error = error {
                    print("❌ Localization error: \(error)")
                } else {
                    print("✅ Localization loaded!")
                }
            }        
    }
    
    func setLanguage(_ lang: String) {
        i18n.lang = lang
    }
    
    func t(_ key: String) -> String {
        return i18n.t(key) ?? key
    }
    
    var currentLanguage: String {
        return i18n.lang
    }
}
