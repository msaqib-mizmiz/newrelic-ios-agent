//
//  UIColor+HexString.swift
//  Agent_iOS
//
//  Created by Steve Malsam on 3/15/25.
//  Copyright © 2025 New Relic. All rights reserved.
//

import Foundation
import UIKit

internal extension UIColor {
    func toHexString(includingAlpha: Bool) -> String {
        var red: CGFloat = 0.0
        var green: CGFloat = 0.0
        var blue: CGFloat = 0.0
        var alpha: CGFloat = 0.0
        
        let multiplier = CGFloat(255.999999)
        
        let components = self.cgColor.components
        
        // This is a grayscale color. Either White, Black, or some grey in between
        if(self.cgColor.numberOfComponents == 2) {
            red = components?[0] ?? 0.0
            green = components?[0] ?? 0.0
            blue = components?[0] ?? 0.0
            alpha = components?[1] ?? 1.0
        } else { // regular 4 component color
            red = components?[0] ?? 0.0
            green = components?[1] ?? 0.0
            blue = components?[2] ?? 0.0
            alpha = components?[3] ?? 0.0
        }
        
        let hexRed = String(format: "%02x", Int(red * multiplier))//String.init(Int(red * multiplier), radix: 16, uppercase: true)
        let hexGreen = String(format: "%02x", Int(green * multiplier))//String.init(Int(green * multiplier), radix: 16, uppercase: true)
        let hexBlue = String(format: "%02x", Int(blue * multiplier))//String.init(Int(blue * multiplier), radix: 16, uppercase: true)
        let hexAlpha = includingAlpha ? String(format: "%02x", Int(alpha * multiplier)) : ""//String.init(Int(alpha * multiplier), radix: 16, uppercase: true) : ""
        
        let colorString = "#\(hexRed)\(hexGreen)\(hexBlue)\(hexAlpha)"
        
        return colorString.uppercased()
    }
}
