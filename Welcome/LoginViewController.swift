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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }
    
    @IBAction func logInTaped() {
    }
    
    @IBAction func forgotUserNameTaped() {
    }
    
    @IBAction func forgotPasswordTaped() {
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
    }
}
