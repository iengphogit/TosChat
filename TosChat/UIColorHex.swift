//
//  UIColorHex.swift
//  TosChat
//
//  Created by Iengpho on 11/5/18.
//  Copyright © 2018 Iengpho. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255,"Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue commponent")
        self.init(red: CGFloat(red) / 255.0 , green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0 , alpha: 1)
    }
    
    convenience init(netHex: Int){
        self.init(red: (netHex >> 16) & 0xFF, green: (netHex >> 8) & 0xFF, blue: netHex & 0xFF)
    }
}
