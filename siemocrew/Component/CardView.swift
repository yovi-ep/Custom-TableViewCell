//
//  CardView.swift
//  moviecatalogue
//
//  Created by Yovi Eka Putra on 28/07/19.
//  Copyright © 2019 Mobile SIEMO. All rights reserved.
//

import UIKit

@IBDesignable
class CardView: UIView {
    @IBInspectable var cornnerRadius : CGFloat = 3
    @IBInspectable var shadowOfSetWidth : CGFloat = 0
    @IBInspectable var shadowOfSetHeight : CGFloat = 0
    
    @IBInspectable var shadowColour : UIColor = UIColor.gray
    @IBInspectable var shadowOpacity : CGFloat = 0.2
    
    override func layoutSubviews() {
        setupUI()
    }
    
    private func setupUI() {
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornnerRadius)
        
        layer.shadowPath = shadowPath.cgPath
        layer.shadowColor = shadowColour.cgColor
        layer.shadowOffset = CGSize(width: shadowOfSetWidth, height: shadowOfSetHeight)
        layer.shadowOpacity = Float(shadowOpacity)
        layer.cornerRadius = cornnerRadius
    }
}
