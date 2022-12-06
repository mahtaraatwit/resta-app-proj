//
//  UIColor+Extension.swift
//  resta
//
//  Created by amenm on 12/1/22.
//

/* used for custom color i used on storyboard*/
import Foundation
import UIKit

extension UIColor {
    //(248, 222, 126)
    static let mellowyellow = UIColor(red: 248/255, green: 22/255, blue: 126/255, alpha: 1)
    static let customBackGroundColor = UIColor(red: 153/255, green: 204/255, blue: 204/255, alpha: 1)
    //UIColor().colorFromHex("99cccc")
    //static let thumbTint = UIColor().colorFromHex("EA3323")
    
    func colorFromHex(_ hex: String) -> UIColor {
        var hexString = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        if hexString.hasPrefix("#") {
            hexString.remove(at: hexString.startIndex)
        }
        
        if hexString.count != 6 {
            return UIColor.cyan
        }
        
        var rgb: UInt32 = 0
        Scanner(string: hexString).scanHexInt32(&rgb)
        
        
        return UIColor.init(
            red: CGFloat( (rgb & 0xFF0000) >> 16) / 255.0,
            green: CGFloat( (rgb & 0x00F00) >> 8) / 255.0,
            blue: CGFloat( (rgb & 0x0000FF)) / 255.0,
            alpha: 1)
    }
}

