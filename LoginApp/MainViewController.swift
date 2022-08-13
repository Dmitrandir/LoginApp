//
//  ViewController.swift
//  LoginApp
//
//  Created by Дмитрий Солопов on 13.08.2022.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    let userName = "Komediant"
    let password = "qwerty"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func logInButtonPressed() {
        if userNameTF.text == userName && passwordTF.text == password {
            
        } else {
            showAlertInvalid(with: "Invalid login or password", and: "Please, enter correct login and password")
        }
    
    }
    
    @IBAction func forgotUserNameButtonPressed() {
        showAlertForgotUserName(with: "Oops!", and: "You are name is \(userName)😉")
    }
    
    @IBAction func forgotPasswordPressed() {
        showAlertPaasword(with: "Oops!", and: "Your password is \(password)😉")
    }
    
}

// MARK: - UAAlertControllers
extension MainViewController {
    private func showAlertInvalid(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okButton = UIAlertAction(title: "OK", style: .default) { _ in
            self.userNameTF.text = ""
        }
        
        alert.addAction(okButton)
        
        present(alert, animated: true)
    }
    
    
    private func showAlertForgotUserName(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let forgotUserNameButton = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(forgotUserNameButton)
        
        present(alert, animated: true)
    }
    
    private func showAlertPaasword(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let forgotPasswordButton = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(forgotPasswordButton)
        
        present(alert, animated: true)
    }
    
}







