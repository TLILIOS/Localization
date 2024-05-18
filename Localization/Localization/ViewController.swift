//
//  ViewController.swift
//  Localization
//
//  Created by HTLILI on 17/05/2024.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {

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
//        let picker = UIImagePickerController()
//        picker.sourceType = .camera
//        picker.allowsEditing = true
//        picker.delegate = self
//        present(picker, animated: true, completion: nil)
    }
//    
//    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
//        dismiss(animated: true, completion: nil)
//    }
}

