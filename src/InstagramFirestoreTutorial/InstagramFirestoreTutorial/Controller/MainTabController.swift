//
//  MainTabController.swift
//  InstagramFirestoreTutorial
//
//  Created by SatoshiShimamura on 2021/07/07.
//

import UIKit

class MainTabCOntroller: UITabBarController {
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // screen configuration
        configureViewControllers()
    }
    
    // MARK: - Helpers
    func configureViewControllers() {
        
        // screens
        let feed = FeedController()
        let search = SearchController()
        let imageSelector = ImageSelectorController()
        let notifications = NotificationsController()
        let profile = ProfileController()
        viewControllers = [feed, search, imageSelector, notifications, profile]
    }
}
