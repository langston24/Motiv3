//
//  ViewController.swift
//  Test
//
//  Created by Big.SkinnyCo on 8/9/17.
//  Copyright © 2017 HGPMAC16. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var drawView : DrawView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("This is the size of my drawView -> Size(width: \(drawView.frame.size.width), height: \(drawView.frame.size.height)  and position -> CGRect(_: _: x: \(drawView.frame.origin.x), y: \(drawView.frame.origin.y))")
    }

     func didRecieveMemoryWarning() {
        didRecieveMemoryWarning()
        //Dispose of any resources that can be recreated.
        
    }
    
    @IBAction func clearTapped() {
        let theDrawView = drawView as DrawView
        theDrawView.lines = []
        theDrawView.setNeedsDisplay()
    }
    
    @IBAction func colorTapped(button: UIButton!) {
        let theDrawView = drawView as DrawView
        var color: UIColor!
        if (button.titleLabel?.text == "Black") {
            color = UIColor.black
        } else if (button.titleLabel?.text == "Blue") {
            color = UIColor.blue
        }
        theDrawView.drawColor = color
    }
}





