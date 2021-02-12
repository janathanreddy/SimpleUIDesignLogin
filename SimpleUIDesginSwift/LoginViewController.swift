//
//  LoginViewController.swift
//  SimpleUIDesginSwift
//
//  Created by Janarthan Subburaj on 10/02/21.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var Cloud: UIImageView!
    @IBOutlet weak var LeftConstraits: NSLayoutConstraint!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var LoginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        view1.layer.cornerRadius = 20
        view1.layer.borderColor = UIColor.white.cgColor
        view1.layer.borderWidth = 1
        view1.layer.masksToBounds = true

        LoginButton.layer.cornerRadius = 10
        LoginButton.layer.borderColor = UIColor.white.cgColor
        LoginButton.layer.borderWidth = 1
        LoginButton.layer.masksToBounds = true

    }
    override func viewWillAppear(_ animated: Bool) {
        animateClouds()
    }
    
    private func animateClouds() {
        LeftConstraits.constant = 0
        Cloud.layer.removeAllAnimations()
      view.layoutIfNeeded()
      let distance = view.bounds.width - Cloud.bounds.width
      self.LeftConstraits.constant = distance
        UIView.animate(withDuration: 15, delay: 0, options: [.repeat, .autoreverse], animations: {
       self.view.layoutIfNeeded()
      })
     }
   

}
