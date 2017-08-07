//
//  RoundedImageView.swift
//  Test
//
//  Created by HGPMAC16 on 7/10/17.
//  Copyright © 2017 HGPMAC16. All rights reserved.
//

import UIKit

class RoundedImageView: UIImageView {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = layer.frame.size.width / 2
        layer.masksToBounds = true
        
        /* border code */
         layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 1.0
        
    }
    
}
