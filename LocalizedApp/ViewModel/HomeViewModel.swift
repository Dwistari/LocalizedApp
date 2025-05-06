//
//  HomeViewModel.swift
//  LocalizedApp
//
//  Created by Dwistari on 06/05/25.
//

import i18next

class HomeViewModel {
    func toggleLanguage() {
        let currentLang = LocalizationManager.shared.currentLanguage == "en" ? "id" : "en"
        LocalizationManager.shared.setLanguage(currentLang)
    }
}
