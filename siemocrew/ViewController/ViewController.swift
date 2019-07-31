//
//  ViewController.swift
//  moviecatalogue
//
//  Created by Yovi Eka Putra on 26/07/19.
//  Copyright © 2019 Mobile SIEMO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var profilePresenter = ProfilePrensenter()
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "SIEMO Crew"
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorColor = UIColor(white: 0, alpha: 0)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profilePresenter.getDataProfiles().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cardItem", for: indexPath) as! ProfileCell
        cell.setContentView(profile: profilePresenter.getDataProfiles()[indexPath.row])
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        onClickItem(profile: profilePresenter.getDataProfiles()[indexPath.row])
    }
    
    func onClickItem(profile: Profile) {
        self.toDetailController(profile: profile)
    }
    
    func toDetailController(profile: Profile) {
        let controller = ProfileDetailVC.instantiate(appStoryboard: .Main)
        controller.profile = profile
        self.navigationController?.pushViewController(controller, animated: true)
    }
}
