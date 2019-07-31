//
//  ProfileDetailVCViewController.swift
//  moviecatalogue
//
//  Created by Yovi Eka Putra on 29/07/19.
//  Copyright © 2019 Mobile SIEMO. All rights reserved.
//

import UIKit

class ProfileDetailVC: UIViewController {
   
    @IBOutlet weak var imgProfile: CyrcleImageView!
    @IBOutlet weak var tvName: UILabel!
    @IBOutlet weak var tvPosition: UILabel!
    var profile: Profile!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupData()
    }
    
    private func setupUI() {
        navigationItem.title = "Profile"
    }
    
    private func setupData() {
        imgProfile.image = UIImage(named: profile.image)
        tvName.text = profile.name
        tvPosition.text = profile.position
    }
}
