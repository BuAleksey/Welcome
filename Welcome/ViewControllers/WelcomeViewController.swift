//
//  WelcomeViewController.swift
//  Welcome
//
//  Created by Buba on 01.10.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var userName: String!
    
    private let user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user.person.name)"
    }
}
