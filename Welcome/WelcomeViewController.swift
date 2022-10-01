//
//  WelcomeViewController.swift
//  Welcome
//
//  Created by Buba on 01.10.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    var userName: String!
    
    @IBOutlet var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome \(userName ?? "")"
    }
}
