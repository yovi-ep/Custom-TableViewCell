//
//  MovieCell.swift
//  moviecatalogue
//
//  Created by Yovi Eka Putra on 26/07/19.
//  Copyright © 2019 Mobile SIEMO. All rights reserved.
//

import UIKit

class ProfileCell: UITableViewCell {

    @IBOutlet weak var cardView: CardView!
    @IBOutlet weak var imgIcon: UIImageView!
    @IBOutlet weak var tvTitle: UITextView!
    @IBOutlet weak var tvDescription: UITextView!

    func setContentView(profile: Profile) {
        imgIcon.image = UIImage(named: profile.image)
        tvTitle.text = profile.name
        tvDescription.text = profile.position
    }
}
