//
//  CyrcleImageView.swift
//  moviecatalogue
//
//  Created by Yovi Eka Putra on 29/07/19.
//  Copyright © 2019 Mobile SIEMO. All rights reserved.
//

import UIKit

@IBDesignable
class CyrcleImageView: UIImageView {
    @IBInspectable var cornnerRadius : CGFloat = 50
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.borderWidth = 0.5
        layer.masksToBounds = false
        layer.borderColor = UIColor.lightGray.cgColor
        layer.cornerRadius = frame.height/2
        clipsToBounds = true
    }
}
