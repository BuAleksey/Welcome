//
//  LoginViewController.swift
//  Welcome
//
//  Created by Buba on 01.10.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let name = "User"
    private let password = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if userNameTF.text == name && passwordTF.text == password {
            guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
            welcomeVC.userName = userNameTF.text
        } else {
            showAlert(with: "Attantion", and: "User name or passowor is wrong")
            passwordTF.text = ""
        }
    }
    
    @IBAction func forgotUserNameTaped() {
        showAlert(with: "Remind", and: "Your user name is User")
    }
    
    @IBAction func forgotPasswordTaped() {
        showAlert(with: "Remind", and: "Your password is Password")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
}

extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
