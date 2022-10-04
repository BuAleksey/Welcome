//
//  DefinitionViewController.swift
//  Welcome
//
//  Created by Buba on 04.10.2022.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet var definitionLabel: UILabel!
    
    var definition = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        definitionLabel.text = definition
    }
}
