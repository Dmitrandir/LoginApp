//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Дмитрий Солопов on 13.08.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var emojiLabel: UILabel!
    
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome, \(userName ?? "")"
        emojiLabel.text = "👋"
    }

}
