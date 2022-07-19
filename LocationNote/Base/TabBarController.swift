//
//  TabBarViewController.swift
//  LocationNote
//
//  Created by User on 19.07.2022.
//

import UIKit

class TabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let listVC = ListOfNotesViewController()
        
        let configureItem = UIImage.SymbolConfiguration(weight: .semibold)
        let imageItem = UIImage(systemName: "square.fill", withConfiguration: configureItem)
        
        viewControllers = [
            setupNavigationController(
                rootViewController: listVC,
                title: "Notes",
                image: imageItem ?? UIImage())
        ]
        
    }
    
    private func setupNavigationController(rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        
        
        return navigationVC
    }
    
    
    
}
