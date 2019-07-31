//
//  ProfilePresenter.swift
//  moviecatalogue
//
//  Created by Yovi Eka Putra on 30/07/19.
//  Copyright © 2019 Mobile SIEMO. All rights reserved.
//

import Foundation

class ProfilePrensenter {
    
    func getDataProfiles() -> [Profile] {
        return [
            Profile(image: "yovi", name: "Yovi Eka Putra", position: "FrontEnd Developer", description: "I am superman"),
            Profile(image: "rudi", name: "Imanda Fachruddin", position: "FrontEnd Developer", description: "?"),
            Profile(image: "zul", name: "Zulkarnaen", position: "Fullstack Developer", description: "I am superman"),
            Profile(image: "esa", name: "Esa Taqwa", position: "Backend Developer", description: "I am superman"),
            Profile(image: "aldi", name: "Aldyansyah", position: "Backend Developer", description: "I am superman"),
        ]
    }
}
