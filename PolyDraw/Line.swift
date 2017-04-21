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
        let rect = CGRect(x: self.X, y: self.Y, width: self.theWidth, height: self.theHeight)
        //theContext.addL
        let path = CGPath(rect: rect, transform: nil)
        //theContext.addLine(to: rect)
        theContext.addPath(path)
        theContext.strokePath()
    }
}
