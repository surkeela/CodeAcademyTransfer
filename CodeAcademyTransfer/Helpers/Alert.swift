//
//  Alert.swift
//  CodeAcademyTransfer
//
//  Created by Nerijus Surkys on 2023-08-01.
//

import UIKit

func showAlert(title: String, message: String, viewController: UIViewController) {
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
    viewController.present(alert, animated: true, completion: nil)
}
