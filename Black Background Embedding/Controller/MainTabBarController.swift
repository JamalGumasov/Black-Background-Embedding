//
//  MainTabBarController.swift
//  Black Background Embedding
//
//  Created by Джамал Гумасов on 01.07.2022.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        //инициализация
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateInitialViewController()
          
    
        
        //иконки tab bar
        viewControllers = [
            generateNavigationController(with: (viewController)!, title: "Photos", image: UIImage(named: "Photos") ?? .actions ),
            
            generateNavigationController(with: FavouriteViewController(), title: "Favourite", image: UIImage(named: "Favourites") ?? .actions  )
        ]
    }
    
        func generateNavigationController(with rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
            let navController = UINavigationController(rootViewController: rootViewController)
//            navController.navigationBar.shadowImage = UIImage()
            navController.tabBarItem.title = title
            navController.tabBarItem.image = image
            return navController
        }
    
}

