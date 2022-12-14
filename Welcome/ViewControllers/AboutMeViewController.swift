//
//  AboutMeViewController.swift
//  Welcome
//
//  Created by Buba on 04.10.2022.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet var photoImage: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var placeOfWorkLabel: UILabel!
    @IBOutlet var professionLabel: UILabel!
    @IBOutlet var yearsLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScreen()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let definitionVC = segue.destination as? DefinitionViewController else { return }
        definitionVC.definition = user.person.definition
    }
    
    private func setupScreen() {
        let red = UIColor.white
        
        title = user.person.name
        
        photoImage.image = UIImage(named: user.person.photo)
        photoImage.layer.cornerRadius = photoImage.frame.width / 2
        photoImage.layer.borderWidth = 2
        photoImage.layer.borderColor = red.cgColor
        
        nameLabel.text = user.person.name
        placeOfWorkLabel.text = user.person.plaseOfWork
        professionLabel.text = user.person.profession
        yearsLabel.text = String(user.person.age)
    }
}
