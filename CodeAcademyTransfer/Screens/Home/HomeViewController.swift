//
//  HomeViewController.swift
//  CodeAcademyTransfer
//
//  Created by Nerijus Surkys on 2023-08-02.
//

import UIKit

class HomeViewController: UIViewController {
    
    let authenticationManager: AuthenticationManager
    let transferManager: TransferManager
    
    init(authenticationManager: AuthenticationManager, transferManager: TransferManager) {
        self.authenticationManager = authenticationManager
        self.transferManager = transferManager
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var balanceLabel: UILabel!
    @IBOutlet weak var recipientNameTextField: UITextField!
    @IBOutlet weak var transferButton: UIButton!
    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var logoutButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    @IBAction func transferTapped(_ sender: Any) {
        if let recipientName = recipientNameTextField.text,
           let amount = Double(amountTextField.text ?? "0.0")
        {
            let recipient = authenticationManager.findUser(username: recipientName)
            if authenticationManager.isRecipientExists(user: recipient, vc: self) {
                transferManager.transferMoney(amount: amount, recipient: recipient, vc: self)
                configureUI()
                showAlert(title: "", message: "The transfer was successful", viewController: self)
            }
        }
    }
    
    @IBAction func logoutTapped(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    func configureUI() {
        greetingLabel.text = "Hello \(transferManager.currentUser.username)"
        balanceLabel.text = "Balance: \(transferManager.currentUser.balance) €"
        recipientNameTextField.placeholder = "Send to"
        amountTextField.placeholder = "Send amount"
        transferButton.setTitle("Transfer", for: .normal)
        logoutButton.setTitle("Logout", for: .normal)
        amountTextField.text = ""
    }
    
    
}
