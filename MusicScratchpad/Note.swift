//
//  Note.swift
//  MusicScratchpad
//
//  Created by Patrick Gallagher on 4/17/16.
//  Copyright (c) 2016 Viviose. All rights reserved.
//

import Foundation
import UIKit

class Note{
    var coords : CGPoint = CGPoint(x: 0,y: 0)
    var noteName : NoteName = NoteName.C
    var octave : Int = 3
    
    
    func getNoteFromTouch(touch: CGPoint) -> Note{
        for index in 0...12{
            
        }
        return Note()
    }
}

enum NoteName : Int {
    case C = 0
    case D = 1
    case E = 2
    case F = 3
    case G = 4
    case A = 5
    case B = 6
}
enum Clef : Int {
    case Alto = 0
    case Treble = -1
    case Bass = 1
}