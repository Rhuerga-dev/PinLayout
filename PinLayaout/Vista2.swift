//
//  Vista2.swift
//  PinLayaout
//
//  Created by Reynaldo Huerga Puron on 29/01/23.
//

import UIKit
import PinLayout
import SwiftDate

class Vista2: UIViewController {

    @IBOutlet weak var imgLogo: UIImageView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var homeView: UIView!
    @IBOutlet weak var imgShop: UIImageView!
    @IBOutlet weak var imgGuaapas: UIImageView!
    @IBOutlet weak var btnOption1: UIButton!
    @IBOutlet weak var btnOption2: UIButton!
    @IBOutlet weak var btnOption3: UIButton!
    @IBOutlet weak var btnOption4: UIButton!
    @IBOutlet weak var btnOption5: UIButton!
    @IBOutlet weak var labelHola: UILabel!
    @IBOutlet weak var imagesView: UIView!
    @IBOutlet weak var imgPalette: UIImageView!
    @IBOutlet weak var imgMakeup: UIImageView!
    @IBOutlet weak var OptionView: UIView!
    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var btnHome: UIImageView!
    @IBOutlet weak var btnSearch: UIImageView!
    @IBOutlet weak var btnComunity: UIImageView!
    @IBOutlet weak var btnAccount: UIImageView!
    @IBOutlet weak var labelHome: UILabel!
    @IBOutlet weak var labelSearch: UILabel!
    @IBOutlet weak var labelComunity: UILabel!
    @IBOutlet weak var labelAccount: UILabel!
    @IBOutlet weak var labelTp: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fecha = Date() - 5.hours
        print(fecha)
        
        print(fecha.toRelative(since: nil, style: RelativeFormatter.twitterStyle()))
       
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        let pl = self.view.pin
        
        menuView.pin
            .bottom(pl.safeArea)
            .hCenter()
            .height(56)
        
        btnHome.pin
            .width(24)
            .height(24)
            .left(33)
        
        labelHome.pin
            .below(of: btnHome, aligned: .center)
            .marginTop(2)
            
        
        btnSearch.pin
            .width(24)
            .height(24)
            .after(of: btnHome)
            .marginLeft(66)
        
        labelSearch.pin
            .below(of: btnSearch, aligned: .center)
            .marginTop(2)
        
        btnComunity.pin
            .width(24)
            .height(24)
            .after(of: btnSearch)
            .marginLeft(66)
        
        labelComunity.pin
            .below(of: btnComunity, aligned: .center)
            .marginTop(2)
        
        btnAccount.pin
            .width(24)
            .height(24)
            .after(of: btnComunity)
            .marginLeft(66)
        
        labelAccount.pin
            .below(of: btnAccount, aligned: .center)
            .marginTop(2)
        
        if UIDevice.current.orientation.isLandscape{
            imagesView.pin
                .below(of: homeView)
                .marginTop(40)
                .right(pl.safeArea)
                .marginRight(-50)
                .height(156)
        }else{
            imagesView.pin
                .above(of: menuView)
                .marginBottom(150)
                .left(pl.safeArea)
                .right(pl.safeArea)
                .height(156)
        }
        
            imgPalette.pin
                .width(172)
                .height(156)
                .left()
                .marginLeft(16)
            
            
            imgMakeup.pin
                .width(172)
                .height(156)
                .right()
                .marginRight(16)
        
        if UIDevice.current.orientation.isLandscape{
            labelTp.pin
                .above(of: imagesView)
                .marginBottom(10)
                .width(200)
                .height(24)
                .right(pl.safeArea)
                .left(to: imgPalette.edge.left)
        }else{
            labelTp.pin
                .above(of: imagesView)
                .marginBottom(23)
                .width(200)
                .height(24)
                .left(pl.safeArea)
                .marginLeft(19)
        }
        
        if UIDevice.current.orientation.isLandscape{
            OptionView.tintColor = .clear
    
        }else{
            OptionView.pin
                .above(of: labelTp)
                .marginBottom(23)
                .width(213)
                .height(4)
        }
        if UIDevice.current.orientation.isLandscape{
            imageView.pin
                .below(of: homeView)
                .marginTop(40)
                .height(156)
                .left()
                .marginLeft(22)
        }else{
            imageView.pin
                .above(of: OptionView)
                .marginTop(16)
                .left()
                .right()
        }
        labelHola.pin
            .above(of: imageView)
            .marginBottom(26)
            .width(66)
            .height(24)
            .left(pl.safeArea)
            .marginLeft(16)
        
        homeView.pin
            .top(pl.safeArea)
            .left()
            .right()
            .height(45)
        
        imgLogo.pin
            .top(to: homeView.edge.top)
            .marginTop(5)
            .width(108)
            .height(37)
            .hCenter()
        
        imgShop.pin
            .top(to: homeView.edge.top)
            .marginTop(18)
            .right(30)
            .width(24)
            .height(24)
            
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
