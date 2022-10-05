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
    
    private let user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.text = user.login
        passwordTF.text = user.password
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else {
            return
        }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        viewControllers.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.userName = user.person.name
            } else if let navigationController = viewController as? UINavigationController {
                guard let aboutMeVC = navigationController.topViewController as? AboutMeViewController else { return }
                aboutMeVC.user = user
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func logInTaped() {
        guard userNameTF.text == user.login, passwordTF.text == user.password else {
            showAlert(
                with: "Attantion",
                and: "User name or passowor is wrong",
                textfield: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "showTabBarVC", sender: nil)
    }
    
    @IBAction func forgotInfo(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(with: "Remind", and: "Your user name is \(user.login)")
        : showAlert(with: "Remind", and: "Your password is \(user.password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
}

extension LoginViewController {
    private func showAlert(
        with title: String,
        and message: String,
        textfield: UITextField? = nil
    ) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textfield?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
