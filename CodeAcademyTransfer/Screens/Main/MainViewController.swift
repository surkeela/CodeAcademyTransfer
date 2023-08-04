
import UIKit

class MainViewController: UIViewController {
    
    let authenticationManager = AuthenticationManager()
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        let authenticationViewController = AuthenticationViewController(authenticationType: .login, authenticationManager: authenticationManager)
        navigationController?.pushViewController(authenticationViewController, animated: true)
    }
    
    @IBAction func registerButtonTaped(_ sender: Any) {
        let authenticationViewController = AuthenticationViewController(authenticationType: .registration, authenticationManager: authenticationManager)
        navigationController?.pushViewController(authenticationViewController, animated: true)
    }
    
    func setupUI() {
        loginButton.layer.cornerRadius = 8
        registerButton.layer.cornerRadius = 8
    }
    
    
}

