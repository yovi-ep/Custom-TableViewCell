//
//  UIViewController.swift
//  moviecatalogue
//
//  Created by Yovi Eka Putra on 30/07/19.
//  Copyright © 2019 Mobile SIEMO. All rights reserved.
//

import Foundation
import UIKit

enum AppStoryboard: String {
    // storyboard name
    case Main
    
    var instance: UIStoryboard {
        return UIStoryboard(name: self.rawValue, bundle: Bundle.main)
    }
    
    func viewController<T: UIViewController>(viewControllerClass: T.Type) -> T {
        let storyboardID = (viewControllerClass as UIViewController.Type).storyboardID
        return instance.instantiateViewController(withIdentifier: storyboardID) as! T
    }
    
    func initialViewController() -> UIViewController? {
        return instance.instantiateInitialViewController()
    }
}

extension UIViewController {
    class var storyboardID: String {
        return "\(self)"
    }
    
    static func instantiate(appStoryboard storyboard: AppStoryboard) -> Self {
        return storyboard.viewController(viewControllerClass: self)
    }
}
