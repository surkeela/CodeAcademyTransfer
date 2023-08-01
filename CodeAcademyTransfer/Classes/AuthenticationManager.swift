//
//  AuthenticationManager.swift
//  CodeAcademyTransfer
//
//  Created by Nerijus Surkys on 2023-07-31.
//

import UIKit

class AuthenticationManager {
    
    var registeredUsers: [User] = []
    
    func isUserInputsValid(username: String, password: String) -> Bool {
        let minUsernameLength = 8
        if username.count >= minUsernameLength && password.count >= minUsernameLength {
            return true
        } else {
            print("Password and username must by 8 symbols")
            return false
        }
    }
    
    func isUserRegistered(username: String) -> Bool {
        return registeredUsers.contains(where: { user in
            user.username == username
        })
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

