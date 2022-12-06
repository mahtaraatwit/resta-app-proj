//
//  UIView+Extensions.swift
//  resta
//
//  Created by amenm on 12/1/22.
//

import Foundation
import UIKit
/*
 adding dynamic constraints to lessen chunky code œ
 */
extension UIView {
    
    func anchor(leading: NSLayoutXAxisAnchor?, trailing: NSLayoutXAxisAnchor?, top: NSLayoutYAxisAnchor?, bot: NSLayoutYAxisAnchor?, padding: UIEdgeInsets = .zero, size: CGSize = .zero) {
        
        if let leading = leading {
            leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
        }
        
        if let trailing = trailing {
            trailingAnchor.constraint(equalTo: trailing, constant: padding.right).isActive = true
        }
        
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
        }
        
        if let bot = bot {
            bottomAnchor.constraint(equalTo: bot, constant: padding.bottom).isActive = true
        }
        
        if size.height != 0 {
            heightAnchor.constraint(equalToConstant: size.height).isActive = true
        }
        
        if size.width !=  0 {
            widthAnchor.constraint(equalToConstant: size.width).isActive = true
        }
        
        
    }
}
