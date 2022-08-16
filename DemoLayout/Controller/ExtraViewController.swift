//
//  ExtraViewController.swift
//  DemoLayout
//
//  Created by valters.steinblums on 16/08/2022.
//

import UIKit

class ExtraViewController: UIViewController {

    @IBOutlet weak var backToButtons: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backToButtons.layer.cornerRadius = 10
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
