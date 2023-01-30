//
//  ViewController.swift
//  PinLayaout
//
//  Created by Reynaldo Huerga Puron on 29/01/23.
//

import UIKit
import PinLayout

class ViewController: UIViewController {
    @IBOutlet weak var imgLogo: UIImageView!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnCreateAccount: UIButton!
    @IBOutlet weak var btnNoLogin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        let pl = self.view.pin
        btnNoLogin.pin.bottom(pl.safeArea).left(pl.safeArea).right(pl.safeArea).margin(0, 30, 30)
        btnCreateAccount.pin.above(of: btnNoLogin).left(pl.safeArea).right(pl.safeArea).margin(0, 30, 10)
        btnLogin.pin.above(of: btnCreateAccount).left(pl.safeArea).right(pl.safeArea).margin(0, 30, 10)
        imgLogo.pin.above(of: btnLogin, aligned: .center).marginBottom(20)
    }
}

