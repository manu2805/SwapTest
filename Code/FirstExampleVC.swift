//
//  TimelineSwiftViewController.swift
//  Layer-Parse-iOS-Swift-Example
//
//  Created by Manudeep N.s on 7/24/15.
//  Copyright (c) 2015 layer. All rights reserved.
//

import UIKit

class FirstExampleVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: true)
        //Instantiation and the setting of the size and position
        let swiftPagesView : SwiftPages!
        swiftPagesView = SwiftPages(frame: CGRectMake(0, 0, self.view.frame.width, self.view.frame.height))
        
        //Initiation
        var VCIDs : [String] = ["FirstVC", "SecondVC", "ThirdVC", "FourthVC", "FifthVC"]
        var buttonImages : [UIImage] = [UIImage(named:"HomeIcon.png")!,
            UIImage(named:"LocationIcon.png")!,
            UIImage(named:"CollectionIcon.png")!,
            UIImage(named:"ListIcon.png")!,
            UIImage(named:"StarIcon.png")!]
        
        //Sample customization
        swiftPagesView.initializeWithVCIDsArrayAndButtonImagesArray(VCIDs, buttonImagesArray: buttonImages)
        swiftPagesView.setTopBarBackground(UIColor(red: 244/255, green: 164/255, blue: 96/255, alpha: 1.0))
        swiftPagesView.setAnimatedBarColor(UIColor(red: 255/255, green: 250/255, blue: 205/255, alpha: 1.0))
        
        self.view.addSubview(swiftPagesView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func logoutButtonTapped() {
        println("logOutButtonTapAction")
    }
}
