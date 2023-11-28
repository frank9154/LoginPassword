//
//  WelcomeViewController.swift
//  LoginPassword
//
//  Created by Александр Соколов on 28.11.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    
    //@IBOutlet var welcomeLabel: UILabel!
    
   
    
    
    var user: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //welcomeLabel.text = user
        

    }
    

    

    @IBAction func logOutButton() {
        dismiss(animated: true)
    }
}
