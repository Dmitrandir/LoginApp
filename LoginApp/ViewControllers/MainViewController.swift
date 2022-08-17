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
    
    private let user = User(userName: "Q", password: "Q")
    //private let password = "Q"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSecurePassword()
    }

    @IBAction func logInButtonPressed() {
        if userNameTF.text != user.userName && passwordTF.text != user.password {
            showAlertInvalid(with: "Invalid login or password", and: "Please, enter correct login and password")
        }
    }
    
    @IBAction func forgotUserNameButtonPressed() {
        showAlertForgotUserName(with: "Oops!", and: "You are name is \(user.userName)😉")
    }
    
    @IBAction func forgotPasswordPressed() {
        showAlertPaasword(with: "Oops!", and: "Your password is \(user.password)😉")
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userNameTF.text
    
        }
}

// MARK: - UAAlertControllers
extension MainViewController {
    private func showAlertInvalid(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okButton = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
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
    
// MARK: - SetUp Elements
    private func setupSecurePassword() {
        passwordTF.isSecureTextEntry = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
