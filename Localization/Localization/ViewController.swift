//
//  ViewController.swift
//  Localization
//
//  Created by HTLILI on 17/05/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblHello: UILabel!
    
    @IBOutlet weak var btnchangeLanguage: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        lblHello.text = NSLocalizedString("Hello", comment: "Hello Label")
        btnchangeLanguage.setTitle(NSLocalizedString("ChangeLanguage", comment: ""), for: .normal)
       
    }


    @IBAction func btnSwitchLanguage(_ sender: UIButton) {
        let currentLang = Locale.current.language.languageCode
        print(currentLang ?? "")
        let newLanguage = currentLang == "en" ? "fr" : "en"
        UserDefaults.standard.setValue([newLanguage], forKey: "AppleLanguages")
        exit(0)
    }
}

