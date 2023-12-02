//
//  LoginViewController.swift
//  LoginPassword
//
//  Created by Александр Соколов on 27.11.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var userName: UITextField!
    @IBOutlet var passwordText: UITextField!
    
    @IBOutlet var signIn: UIButton!
    
    let user = "User"
    let password = "111"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userName.autocorrectionType = .no
        userName.autocapitalizationType = .none
        passwordText.isSecureTextEntry = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.user = user
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
     guard userName.text == user, passwordText.text == password else {
     let alertController = UIAlertController(title: "Invalid login or password", message: "Please, enter correct login and password", preferredStyle: .alert)
     alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
     present(alertController, animated: true, completion: nil)
     return false
     }
     return true
     }
     
    
    /*override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userName.text == user, passwordText.text == password else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password") {
                    self.passwordText.text = ""
                }
            return false
        }
        return true
    }
    */
    
    @IBAction func forgotPasswordAction(_ sender: UIButton) {
        showAlert(withTitle: "Oops!", andMessage: "Your password is 111")
    }
    
    @IBAction func forgotUserNameAction(_ sender: UIButton) {
        showAlert(withTitle: "Oops!", andMessage: "Your name is User")
    }
    
    @IBAction func signInButton(_ sender: UIButton) {
    }
    
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        userName.text = ""
        passwordText.text = ""
    }
    
    private func showAlert(withTitle title: String, andMessage message: String, completion: (() -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            completion?()
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

