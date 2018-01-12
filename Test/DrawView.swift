//
//  DrawView.swift
//  Test
//
//  Created by Big.SkinnyCo on 8/9/17.
//  Copyright © 2017 HGPMAC16. All rights reserved.
//

import UIKit

class DrawView: UIView {
    
    var lines:[Line] = []
    var lastPoint: CGPoint!
    var drawColor = UIColor.black
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        self.backgroundColor = UIColor.white
        self.layer.zPosition = 1
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("I am in side DrawView.touchesBegan(touches:event:)")
        
        if let touch = touches.first {
            lastPoint =  touch.location(in: self)
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("I am in side DrawView.touchesMoved(touches:event:)")
        if let touch = touches.first {
            let newPoint = touch.location(in: self)
            lines.append(Line(start: lastPoint, end: newPoint, color: drawColor))
            lastPoint = newPoint
        }
        self.setNeedsDisplay()
    }
    
    override func draw(_ rect: CGRect) {
        print("I am inside DrawView.draw(_:)")
        print(lines.count)
        let context = UIGraphicsGetCurrentContext()
        context?.setLineCap(CGLineCap.round)
        context?.setLineWidth(5)
        for line in lines {
            context?.beginPath()
            context?.move(to: CGPoint(x: line.start.x, y: line.start.y))
            context?.addLine(to: CGPoint(x: line.end.x, y: line.end.y))
            context?.setStrokeColor( line.color.cgColor)
            context?.strokePath()

        }

}
}

