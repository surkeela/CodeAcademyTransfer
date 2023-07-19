//
//  ViewController.swift
//  CodeAcademyTransfer
//
//  Created by Nerijus Surkys on 2023-07-18.
//

import UIKit

class RegistrationLoginViewController: UIViewController {
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.layer.cornerRadius = 8
        registerButton.layer.cornerRadius = 8
    }

    @IBAction func loginButtonTapped(_ sender: Any) {
    }
    
    @IBAction func registerButtonTaped(_ sender: Any) {
    }
    
}

