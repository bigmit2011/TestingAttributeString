//
//  ViewController.swift
//  TestingAttributeString
//
//  Created by Amit on 8/20/18.
//  Copyright © 2018 Amit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var weapons:[String] = ["Boomerang", "Atlantica Sword",
    "Gulf Artifact"]
    
    var myMutableString: NSMutableAttributedString?
    @IBOutlet weak var labelTest: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let randomIndex = Int(arc4random_uniform(UInt32(weapons.count)))
        let randomWeapon = weapons[randomIndex]
        let text = "You found a \(randomWeapon) \n !!!"
        
        let range = (text as NSString).range(of: randomWeapon)
        let range2 = (text as NSString).range(of: "You found a")
        let range3 = (text as NSString).range(of:  "\n !!!")
        
        let shadow = NSShadow()
        shadow.shadowColor = UIColor.white
        shadow.shadowBlurRadius = 0
        shadow.shadowOffset = CGSize(width:3, height:3)
        
        let shadow2 = NSShadow()
        shadow2.shadowOffset = CGSize(width:1, height:1)
        
        myMutableString = NSMutableAttributedString(string: text)
        myMutableString?.setAttributes(
            [NSAttributedStringKey.font : UIFont(name: "DamascusBold", size: CGFloat(80.0))!,NSAttributedStringKey.shadow:shadow,
             NSAttributedStringKey.strokeWidth: -0.5,
             NSAttributedStringKey.strokeColor: UIColor.black,
             NSAttributedStringKey.foregroundColor : UIColor(red: 255 / 255.0, green:  128/255.0, blue: 0 / 255.0, alpha: 1.0)], range:range)
        myMutableString?.setAttributes(
            [NSAttributedStringKey.font : UIFont(name: "DamascusBold", size: CGFloat(50.0))!,NSAttributedStringKey.shadow:shadow2,
             NSAttributedStringKey.strokeWidth: -1.5,
             NSAttributedStringKey.strokeColor: UIColor.white,
             NSAttributedStringKey.foregroundColor : UIColor(red: 0 / 255.0, green:  0/255.0, blue: 0 / 255.0, alpha: 1.0)], range:range2)
        myMutableString?.setAttributes(
            [NSAttributedStringKey.font : UIFont(name: "DamascusBold", size: CGFloat(67.0))!,NSAttributedStringKey.shadow:shadow2,
             NSAttributedStringKey.strokeWidth: -1.5,
             NSAttributedStringKey.strokeColor: UIColor.white,
             NSAttributedStringKey.foregroundColor : UIColor(red: 0 / 255.0, green:  0/255.0, blue: 0 / 255.0, alpha: 1.0)], range:range3)
        
        
        labelTest.attributedText = myMutableString

        labelTest.lineBreakMode = .byWordWrapping
        labelTest.minimumScaleFactor = 0.7
        labelTest.numberOfLines = 4
        
        
        labelTest.layer.borderWidth = 2.0
        labelTest.layer.borderColor = UIColor.blue.cgColor
        
        
    
    
    
    
    
    
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }








}
