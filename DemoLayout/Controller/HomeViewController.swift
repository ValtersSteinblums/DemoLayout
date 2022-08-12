//
//  HomeViewController.swift
//  DemoLayout
//
//  Created by valters.steinblums on 10/08/2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet var styleButtonCollection: [UIButton]!
    @IBOutlet weak var buttonFOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        styleButtonCollection.forEach { button in
            button.layer.cornerRadius = 10
            button.layer.borderColor = UIColor.black.cgColor
            button.layer.borderWidth = 2
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonFTapped(_ sender: Any) {
        print("Button F touch up inside")
    }
    
    @IBAction func buttonETapped(_ sender: Any) {
        print("Button E touch up and hold outside")
        buttonFOutlet.isHidden = false
    }
    
    @IBAction func buttonDtapped(_ sender: Any) {
        print("Button D drag and exit")
        buttonFOutlet.isHidden = true
        view.backgroundColor = UIColor.yellow
        navigationItem.title = "Button 'D' Tapped"
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "appID" {
        // Get the new view controller using segue.destination.
            guard let vc = segue.destination as? InfoViewController else {return}
            // Pass the selected object to the new view controller.
            vc.infoText = "I'm passing some info..."
            vc.appDescriptionText = "HERE!!!"
        }
    }
    
}
