//
//  AuthenticationManager.swift
//  CodeAcademyTransfer
//
//  Created by Nerijus Surkys on 2023-07-31.
//

import UIKit

class AuthenticationManager {
    
    var registeredUsers: [User] = []
    
    func isPasswordsMatch(password: String, reEnterPassword: String) -> Bool {
        password == reEnterPassword
    }
    
    func isUserInputsValid(username: String, password: String) -> Bool {
        username.count >= 8 && password.count >= 8 
    }
    
    func isUserRegistered(username: String) -> Bool {
        return registeredUsers.contains(where: { user in
            user.username == username
        })
    }
    
    func isAllConditionsMet(username: String, password: String, reEnterPassword: String, vc: UIViewController) -> Bool {
        var allConditionsMet = true
        
        if password != reEnterPassword {
            allConditionsMet = false
            showAlert(title: "", message: "Passwords do not match", viewController: vc)
        }
        
        if !isUserInputsValid(username: username, password: password) {
            allConditionsMet = false
            showAlert(title: "", message: "Username and password should be at least 8 symbols", viewController: vc)
        }
        
        if isUserRegistered(username: username) {
            allConditionsMet = false
            showAlert(title: "", message: "Username already registered", viewController: vc)
        }
        return allConditionsMet
    }
    
    
}

// MARK: - Debug testing demo user

extension AuthenticationManager {
    func setDemoUser(usernameTextField: UITextField, passwordTextField: UITextField, reEnterPasswordTextField: UITextField, emailTextField: UITextField) {
        usernameTextField.text = "DemoUser"
        passwordTextField.text = "DemoPassword"
        reEnterPasswordTextField.text = "DemoPassword"
        emailTextField.text = "demoEmail@demoHost.com"
    }
}

