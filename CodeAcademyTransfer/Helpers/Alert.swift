//
//  Alert.swift
//  CodeAcademyTransfer
//
//  Created by Nerijus Surkys on 2023-08-01.
//

import UIKit

func showAlert(title: String, message: String) -> UIAlertController {
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    alert.addAction (UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
        NSLog ("The \"OK\" alert occurred. ")
    }))
    return alert
}
