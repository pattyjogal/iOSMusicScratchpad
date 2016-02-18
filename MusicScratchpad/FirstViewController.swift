//
//  FirstViewController.swift
//  MusicScratchpad
//
//  Created by Patrick Gallagher on 2/18/16.
//  Copyright (c) 2016 Viviose. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        //let screenSize : CGRect = UIScreen.mainScreen().bounds
        //let screenWidth = screenSize.width
        //let screenHeight = screenSize.height
        let viewX = self.view.frame.size.width
        let viewY = self.view.frame.size.height
        DisplayDimens.displayX = viewX
        DisplayDimens.displayY = viewY

        
    }


}

