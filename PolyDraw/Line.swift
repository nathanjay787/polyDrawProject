//
//  Line.swift
//  PolyDraw
//
//  Created by Jasiukajc, Nathan on 2017-04-21.
//  Copyright © 2017 Chris Chadillon. All rights reserved.
//

import UIKit

class Line:Shape {
    var theHeight:Double
    var theWidth:Double
    
    init(X:Double, Y:Double, theHeight:Double, theWidth:Double) {
        self.theHeight = theHeight
        self.theWidth = theWidth
        super.init(X: X, Y: Y)
    }
    
    override func draw(_ theContext: CGContext) {
        let origin = CGPoint(x: self.X, y: self.Y)
        let destination = CGPoint(x: self.theWidth, y: self.theHeight)
        theContext.move(to: origin)
        theContext.addLine(to: destination)
    }
}
