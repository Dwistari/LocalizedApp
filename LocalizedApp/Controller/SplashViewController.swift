//
//  SplashViewController.swift
//  LocalizedApp
//
//  Created by Dwistari on 04/05/25.
//

import UIKit

class SplashViewController: UIViewController {
    
    @IBOutlet weak var welcomeLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LocalizationManager.shared.setup()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            let vc = HomeViewController()
            self.present(vc, animated: true, completion: nil)
        }
    }
    
    
}
