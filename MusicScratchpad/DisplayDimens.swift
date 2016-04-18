//
//  DisplayDimens.swift
//  MusicScratchpad
//
//  Created by Patrick Gallagher on 2/18/16.
//  Copyright (c) 2016 Viviose. All rights reserved.
//

import Foundation
import UIKit

class DisplayDimens {
    static var displayX : CGFloat = 0
    static var displayY : CGFloat = 0
    static var spaceHeight : CGFloat = 0
    static func getSubSpaceHeight() -> CGFloat{
        return spaceHeight / 2
    }
    static func getSubSubSpaceHeight() -> CGFloat{
        return spaceHeight / 4
    }
    static var statusbarHeight : CGFloat = 0
}
