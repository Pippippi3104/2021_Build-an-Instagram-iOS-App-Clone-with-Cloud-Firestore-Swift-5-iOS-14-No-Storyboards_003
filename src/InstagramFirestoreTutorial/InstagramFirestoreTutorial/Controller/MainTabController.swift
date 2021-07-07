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
    // screen configuration
    func configureViewControllers() {
        view.backgroundColor = .white
        
        // screens
        let feed = templateNavigationController(unselectedImage: #imageLiteral(resourceName: "home_unselected"),
                                                selectedImage: #imageLiteral(resourceName: "home_selected"), rootViewController: FeedController())
        let search = templateNavigationController(unselectedImage: #imageLiteral(resourceName: "search_unselected"),
                                                  selectedImage: #imageLiteral(resourceName: "search_selected"), rootViewController: SearchController())
        let imageSelector = templateNavigationController(unselectedImage: #imageLiteral(resourceName: "plus_unselected"),
                                                         selectedImage: #imageLiteral(resourceName: "plus_unselected"), rootViewController: ImageSelectorController())
        let notifications = templateNavigationController(unselectedImage: #imageLiteral(resourceName: "like_unselected"),
                                                         selectedImage: #imageLiteral(resourceName: "like_selected"), rootViewController: NotificationsController())
        let profile = templateNavigationController(unselectedImage: #imageLiteral(resourceName: "profile_unselected"),
                                                   selectedImage: #imageLiteral(resourceName: "profile_selected"), rootViewController: ProfileController())
        viewControllers = [feed, search, imageSelector, notifications, profile]
        tabBar.tintColor = .black // icon color
    }
    
    // nav controller config
    func templateNavigationController(
        unselectedImage: UIImage, selectedImage: UIImage, rootViewController: UIViewController
    ) -> UINavigationController {
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = unselectedImage
        nav.tabBarItem.selectedImage = selectedImage
        nav.navigationBar.tintColor = .black // background color
        return nav
    }
}
