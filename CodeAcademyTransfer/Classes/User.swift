//
//  User.swift
//  CodeAcademyTransfer
//
//  Created by Nerijus Surkys on 2023-07-31.
//

import Foundation

class User {
    
    let username: String
    let password: String
    let email: String
    var balance: Double
    
    init(username: String, password: String, email: String, balance: Double) {
        self.username = username
        self.password = password
        self.balance = balance
        self.email = email
    }

    
}
