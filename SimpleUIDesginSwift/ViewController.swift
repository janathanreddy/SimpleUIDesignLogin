//
//  ViewController.swift
//  SimpleUIDesginSwift
//
//  Created by Janarthan Subburaj on 10/02/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgview: UIImageView!
    
    @IBOutlet weak var Login: UIButton!
    @IBOutlet weak var Cloud: UIImageView!

    @IBOutlet weak var Register: UIButton!
    @IBOutlet weak var layoutcon: NSLayoutConstraint!
    @IBOutlet weak var view1: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        Login.layer.cornerRadius = 5
        Login.layer.borderColor = UIColor.white.cgColor
        Login.layer.masksToBounds = true

        Register.layer.cornerRadius = 5
        Register.layer.borderColor = UIColor.white.cgColor
        Register.layer.masksToBounds = true

        view1.layer.cornerRadius = 20
        view1.layer.borderWidth = 1
        view1.layer.borderColor = UIColor.white.cgColor
        view1.layer.masksToBounds = true
        view1.layer.shadowPath = UIBezierPath(rect: view1.bounds).cgPath
        view1.layer.shadowColor = UIColor.black.cgColor
        view1.layer.shadowRadius = 10
        view1.layer.shadowOffset = .zero
        view1.layer.shadowOpacity = 1

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animateClouds()
    }
    private func animateClouds() {
        layoutcon.constant = 0
        Cloud.layer.removeAllAnimations()
      view.layoutIfNeeded()
      let distance = view.bounds.width - Cloud.bounds.width
      self.layoutcon.constant = distance
      UIView.animate(withDuration: 15, delay: 0, options: [.repeat, .curveLinear], animations: {
       self.view.layoutIfNeeded()
      })
     }

}

