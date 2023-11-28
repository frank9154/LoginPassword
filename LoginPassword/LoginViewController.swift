//
//  LoginViewController.swift
//  LoginPassword
//
//  Created by Александр Соколов on 27.11.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    let user = "User"
    let password = "111"
    
    @IBOutlet var userName: UITextField!
    @IBOutlet var passwordText: UITextField!
    
    @IBOutlet var signIn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userName.autocorrectionType = .no
        userName.autocapitalizationType = .none
        passwordText.isSecureTextEntry = true
    }
    
    /*override func touchesBegan(_ touches: Set, with event: UIEvent?) {
     super.touchesBegan(touches, with: event)
     view.endEditing(true)
     }
    */
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
     
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcome = segue.destination as? WelcomeViewController
        welcome?.user = userName.text
        
    }
    
    @IBAction func forgotPasswordAction(_ sender: UIButton) {
        showAlert(withTitle: "Oops!", andMessage: "Your password is 111")
    }
    
    @IBAction func forgotUserNameAction(_ sender: UIButton) {
        showAlert(withTitle: "Oops!", andMessage: "Your name is User")
    }
    
    @IBAction func signInButton(_ sender: UIButton) {
        
    }
    
    /*@IBAction  func unwind(for segue: UIStoryboardSegue) {
        let welcome = segue.source as? WelcomeViewController
        userName.text = .none
    }
     */
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        let welcome = unwindSegue.source as? WelcomeViewController
        userName.text = nil
        
    }
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    
}

