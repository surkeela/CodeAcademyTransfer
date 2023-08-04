//
//  userManager.swift
//  CodeAcademyTransfer
//
//  Created by Nerijus Surkys on 2023-08-02.
//

import UIKit

class TransferManager {
    
    var currentUser: User = User(username: "", password: "", email: "", balance: 0.0)
    
    func isCanTransfer(amount: Double, to recipient: User, vc: UIViewController) -> Bool {
        if amount > currentUser.balance {
            showAlert(title: "", message: "Your balance is insufficient", viewController: vc)
            return false
        }
        
        if amount <= 0 {
            showAlert(title: "", message: "Invalid transfer amount.", viewController: vc)
            return false
        } else {
            return true
        }
    }
    
    func transferMoney(amount: Double, recipient: User, vc: UIViewController) {
        if isCanTransfer(amount: amount, to: recipient, vc: vc) {
            recipient.balance += amount
            currentUser.balance -= amount
        }
    }
    
    
}
