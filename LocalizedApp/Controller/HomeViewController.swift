//
//  HomeViewController.swift
//  LocalizedApp
//
//  Created by Dwistari on 04/05/25.
//

import UIKit
import i18next

class HomeViewController: UIViewController {
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var switchBtn: UIButton!
    
    let viewModel = HomeViewModel()
      
      override func viewDidLoad() {
          super.viewDidLoad()
          updateLocalizedTexts()
      }
      
      func updateLocalizedTexts() {
          label1.text = LocalizationManager.shared.t("welcome")
          label2.text = LocalizationManager.shared.t("message")
          label3.text = LocalizationManager.shared.t("language")
          label4.text = LocalizationManager.shared.t("lang_name")
          switchBtn.setTitle(LocalizationManager.shared.t("toggle_info"), for: .normal)
      }
      
      @IBAction func switchLanguageTapped(_ sender: UIButton) {
          viewModel.toggleLanguage()
          updateLocalizedTexts()
      }
  }
