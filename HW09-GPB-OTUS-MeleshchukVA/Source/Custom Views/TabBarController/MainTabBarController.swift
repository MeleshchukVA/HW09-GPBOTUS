//
//  MainTabBarController.swift
//  HW09-GPB-OTUS-MeleshchukVA
//
//  Created by Владимир Мелещук on 08.10.2022.
//

import UIKit

final class MainTabBarController: UITabBarController {
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [
            createFirstNavigationController(),
            createSecondNavigationController()
        ]
    }
}

//MARK: - Private methods

private extension MainTabBarController {
    func createFirstNavigationController() -> UINavigationController {
        let firstMainViewController = FirstMainViewController()
        firstMainViewController.tabBarItem = UITabBarItem(title: "First", image: UIImage(systemName: "1.circle"), tag: 0)

        return UINavigationController(rootViewController: firstMainViewController)
    }

    func createSecondNavigationController() -> UINavigationController {
        let secondMainViewController = SecondMainViewController()
        secondMainViewController.tabBarItem = UITabBarItem(title: "Second", image: UIImage(systemName: "2.circle"), tag: 1)

        return UINavigationController(rootViewController: secondMainViewController)
    }
}
