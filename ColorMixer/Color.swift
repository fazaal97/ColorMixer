//
//  Color.swift
//  ColorMixer
//
//  Created by Mohamed Shazni on 2021-02-14.
//

import Foundation
import UIKit

class Color {
    var redValue:Float = 0.0
    var greenValue:Float = 0.0
    var blueValue:Float = 0.0
    
    init(red:Float,green:Float,blue:Float) {
        redValue = red
        greenValue = green
        blueValue = blue
    
    }
    
    func getColor() -> UIColor {
        let newColor = UIColor(red: CGFloat(redValue/255.0), green: CGFloat(greenValue/255.0), blue: CGFloat(blueValue/255.0), alpha: 1.0)
        return newColor
        
    }
}
