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
    override func drawRect(rect: CGRect) {
        let staffSpacing : CGFloat = DisplayDimens.displayY / CGFloat(8)
        var c = UIGraphicsGetCurrentContext()
        let black : [CGFloat] = [0,0,0,1]
        CGContextSetStrokeColor(c, black)
        CGContextBeginPath(c)
        for var i :CGFloat = 1; i <= 9; i++ {
            var iteration = CGFloat(staffSpacing * i + staffSpacing)
            CGContextSetLineWidth(c, 5.0)
            CGContextMoveToPoint(c, 0, staffSpacing * i + staffSpacing)
            CGContextAddLineToPoint(c, DisplayDimens.displayX - 40, staffSpacing * i + staffSpacing)
            CGContextStrokePath(c)
        }
        
    }
}
