//
//  StaffView.swift
//  MusicScratchpad
//
//  Created by Patrick Gallagher on 2/18/16.
//  Copyright (c) 2016 Viviose. All rights reserved.
//

import Foundation
import UIKit

class StaffView : UIView{
    let toolbarH : CGFloat = UIApplication.sharedApplication().statusBarFrame.size.height
    var tbc : UITabBarController = UITabBarController()
    let black : [CGFloat] = [0,0,0,1]
    let colorful : [CGFloat] = [0,1,1,1]
    var drawNoteHead : Bool = false
    var lastTouch : UITouch = UITouch()
    let quarterNoteHead = UIImage.init(named: "quarter_head")
    
    
    override func drawRect(rect: CGRect) {
        var tabbarH : CGFloat = tbc.tabBar.frame.size.height
        let staffSpacing : CGFloat = (DisplayDimens.displayY - toolbarH - tabbarH) / CGFloat(9)
        DisplayDimens.spaceHeight = staffSpacing
        var c = UIGraphicsGetCurrentContext()
        CGContextBeginPath(c)
        CGContextSetStrokeColor(c, black)
        for var i :CGFloat = 1; i <= 9; i++ {
            var h = staffSpacing * i + UIApplication.sharedApplication().statusBarFrame.size.height
            
            var iteration = CGFloat(h)
            CGContextSetLineWidth(c, 5.0)
            CGContextMoveToPoint(c, 0, h)
            CGContextAddLineToPoint(c, DisplayDimens.displayX - 40, h)
            CGContextStrokePath(c)
        }
        
        if drawNoteHead{
            var touchCoords : CGPoint = lastTouch.locationInView(self)
            quarterNoteHead?.drawInRect(CGRectMake(touchCoords.x, touchCoords.y, staffSpacing * 1.78, staffSpacing))
            

        }
        
    }
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        if let touch = touches.first as? UITouch{
            var alert : UIAlertView = UIAlertView()
            alert.title = "Coordinates"
            alert.message = String(stringInterpolationSegment: touch.locationInView(self))
            alert.addButtonWithTitle("Good")
            alert.show()
            drawNoteHead = true
            lastTouch = touch
            setNeedsDisplay()
        }
        super.touchesBegan(touches, withEvent:event)
    }
    
    
}
