//
//  InfoViewController.swift
//  DemoLayout
//
//  Created by valters.steinblums on 10/08/2022.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet weak var infoLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var infoText = "No Info."
    var appDescriptionText = "No Info."
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if !infoText.isEmpty && !appDescriptionText.isEmpty {
            infoLabel.text = infoText
            descriptionLabel.text = appDescriptionText
        }
    }
    

    

}
