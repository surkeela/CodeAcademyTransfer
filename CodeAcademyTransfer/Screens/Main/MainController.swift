//
//  ViewController.swift
//  CodeAcademyTransfer
//
//  Created by Nerijus Surkys on 2023-08-01.
//

import UIKit

class MainViewController: UIViewController {
    
    let authenticationManager = AuthenticationManager()
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        loginButton.layer.cornerRadius = 8
        registerButton.layer.cornerRadius = 8
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        let authenticationViewController = AuthenticationViewController(authenticationType: .login, authenticationManager: authenticationManager)
        navigationController?.pushViewController(authenticationViewController, animated: true)
    }
    
    @IBAction func registerButtonTaped(_ sender: Any) {
        let authenticationViewController = AuthenticationViewController(authenticationType: .registration, authenticationManager: authenticationManager)
        navigationController?.pushViewController(authenticationViewController, animated: true)
    }
    
    
}
