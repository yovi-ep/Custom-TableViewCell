//
//  ImageCenterPosition.swift
//  moviecatalogue
//
//  Created by Yovi Eka Putra on 29/07/19.
//  Copyright © 2019 Mobile SIEMO. All rights reserved.
//

import UIKit

@IBDesignable
class ImageCenterPosition: UIImageView {
    
    override func layoutSubviews() {
        cropToBounds(image: image!, width: Double(image!.size.width), height: Double(image!.size.height))
    }

    func cropToBounds(image: UIImage, width: Double, height: Double)  {
        let cgimage = image.cgImage!
        let contextImage: UIImage = UIImage(cgImage: cgimage)
        let contextSize: CGSize = contextImage.size
        var posX: CGFloat = 0.0
        var posY: CGFloat = 0.0
        var cgwidth: CGFloat = CGFloat(width)
        var cgheight: CGFloat = CGFloat(height)
        
        // See what size is longer and create the center off of that
        if contextSize.width > contextSize.height {
            posX = ((contextSize.width - contextSize.height) / 2)
            posY = 0
            cgwidth = contextSize.height
            cgheight = contextSize.height
        } else {
            posX = 0
            posY = ((contextSize.height - contextSize.width) / 2)
            cgwidth = contextSize.width
            cgheight = contextSize.width
        }
        
        let rect: CGRect = CGRect(x: posX, y: posY, width: cgwidth, height: cgheight)
        
        // Create bitmap image from context using the rect
        let imageRef: CGImage = cgimage.cropping(to: rect)!
        
        // Create a new image based on the imageRef and rotate back to the original orientation
        self.image = UIImage(cgImage: imageRef, scale: image.scale, orientation: image.imageOrientation)
    }
}
