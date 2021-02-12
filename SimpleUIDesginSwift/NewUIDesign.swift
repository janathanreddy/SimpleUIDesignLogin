//
//  NewUIDesign.swift
//  SimpleUIDesginSwift
//
//  Created by Janarthan Subburaj on 11/02/21.
//

import UIKit

class NewUIDesign: UIViewController {

    
    @IBOutlet weak var Loginbutton: UIButton!
    @IBOutlet weak var BackButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        Loginbutton.layer.cornerRadius = 10
        Loginbutton.layer.masksToBounds = true

        BackButton.layer.cornerRadius = 10
        BackButton.layer.masksToBounds = true

    }
    

   

}
