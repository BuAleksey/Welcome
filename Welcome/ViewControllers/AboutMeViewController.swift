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
    
    var name = ""
    var placeOfWork = ""
    var profession = ""
    var years = 0
    var definition = ""
    var photo = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScreen()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let definitionVC = segue.destination as? DefinitionViewController else { return }
        definitionVC.definition = definition
    }
    
    private func setupScreen() {
        let red = UIColor.white
        
        title = name
        
        photoImage.image = UIImage(named: photo)
        photoImage.layer.cornerRadius = photoImage.frame.width / 2
        photoImage.layer.borderWidth = 2
        photoImage.layer.borderColor = red.cgColor
        
        nameLabel.text = name
        placeOfWorkLabel.text = placeOfWork
        professionLabel.text = profession
        yearsLabel.text = String(years)
    }
}
