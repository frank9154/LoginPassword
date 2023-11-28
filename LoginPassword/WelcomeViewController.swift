//
//  WelcomeViewController.swift
//  LoginPassword
//
//  Created by Александр Соколов on 28.11.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    
    @IBOutlet var welcomeLabel: UILabel!
    
    var user: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = user

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func logOutButton() {
        dismiss(animated: true)
    }
}
