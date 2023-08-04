//
//  AuthenticationViewController.swift
//  CodeAcademyTransfer
//
//  Created by Nerijus Surkys on 2023-07-31.
//

import UIKit

class AuthenticationViewController: UIViewController {
    
    // Allow debugging user for faster development iteration
    let fillInDebugUser: Bool = true
    
    let authenticationManager: AuthenticationManager
    let authenticationType: AuthenticationType
    let transferManager: TransferManager
    
    init(authenticationType: AuthenticationType, authenticationManager: AuthenticationManager, transferManager: TransferManager) {
        self.authenticationType = authenticationType
        self.authenticationManager = authenticationManager
        self.transferManager = transferManager
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    enum AuthenticationType {
        case login
        case registration
    }
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var reEnterPasswordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        
        if fillInDebugUser {
            authenticationManager.setDemoUser(usernameTextField: usernameTextField,
                                              passwordTextField: passwordTextField,
                                              reEnterPasswordTextField: reEnterPasswordTextField,
                                              emailTextField: emailTextField)
        }
    }
    
    @IBAction func submitButtonTapped(_ sender: Any) {
        if let username = usernameTextField.text,
           let password = passwordTextField.text,
           let reEnterPassword = reEnterPasswordTextField.text,
           let email = emailTextField.text
        {
            switch authenticationType {
            case .registration:
                let user = User(username: username, password: password, email: email, balance: 500)
                if authenticationManager.isAllConditionsMet(username: username, password: password, reEnterPassword: reEnterPassword, vc: self) {
                    transferManager.currentUser = user
                    authenticationManager.registeredUsers.append(user)
                    navigateToHomeViewController()
                }
            case .login:
                let user = authenticationManager.findUser(username: username)
                authenticationManager.checkIfRegistered(username: username, password: password, vc: self)
                transferManager.currentUser = user
                navigateToHomeViewController()
            }
        }
    }
    
    func setupUI(usernamePlaceholder: String, passwordPlaceholder: String, showReEnterPassword: Bool, showEmail: Bool, buttonTitle: String) {
        usernameTextField.placeholder = usernamePlaceholder
        passwordTextField.placeholder = passwordPlaceholder
        reEnterPasswordTextField.isHidden = !showReEnterPassword
        emailTextField.isHidden = !showEmail
        submitButton.setTitle(buttonTitle, for: .normal)
    }
    
    func configureUI() {
        switch authenticationType {
        case .login:
            setupUI(usernamePlaceholder: "Username", passwordPlaceholder: "Password", showReEnterPassword: false, showEmail: false, buttonTitle: "Login")
        case .registration:
            setupUI(usernamePlaceholder: "Username", passwordPlaceholder: "Password", showReEnterPassword: true, showEmail: true, buttonTitle: "Register")
            emailTextField.placeholder = "Email"
            reEnterPasswordTextField.placeholder = "Re-enter password"
        }
        submitButton.layer.cornerRadius = 8
    }
    
    func navigateToHomeViewController() {
        let homeViewController = HomeViewController(authenticationManager: authenticationManager, transferManager: transferManager)
        navigationController?.pushViewController(homeViewController, animated: true)
    }
    
    
}
