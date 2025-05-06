//
//  SplashViewModel.swift
//  LocalizedApp
//
//  Created by Dwistari on 06/05/25.
//

import Foundation

class SplashViewModel {
    func loadLocalization(completion: @escaping () -> Void) {
        LocalizationManager.shared.setup()
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            completion()
        }
    }
}
