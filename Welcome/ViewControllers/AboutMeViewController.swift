//
//  AboutMeViewController.swift
//  Welcome
//
//  Created by Buba on 04.10.2022.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet var name: UILabel!
    @IBOutlet var placeOfWork: UILabel!
    @IBOutlet var profession: UILabel!
    @IBOutlet var years: UILabel!
    
    private let user = User.getUser()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupScreen()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let definitionVC = segue.destination as? DefinitionViewController else { return }
        definitionVC.definition = user.person.definition
    }
    
    private func setupScreen() {
        name.text = user.person.name
        placeOfWork.text = user.person.plaseOfWork
        profession.text = user.person.profession
        years.text = String(user.person.yars)
    }
}
