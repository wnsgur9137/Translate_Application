//
//  ViewController.swift
//  TranslateApplication
//
//  Created by 이준혁 on 2023/01/06.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }
}

private extension TabBarController {
    func setupTabBar() {
//        let translateViewController = TranslateViewController()
        let translateNavigationController = UINavigationController(rootViewController: TranslateViewController())
        translateNavigationController.tabBarItem = UITabBarItem(
            title: "번역",
            image: UIImage(systemName: "mic"),
            selectedImage: UIImage(systemName: "mic.fill"))
        
//        let bookmarkViewController = UIViewController()
        let bookmarkNavigationController = UINavigationController(rootViewController: UIViewController())
        bookmarkNavigationController.tabBarItem = UITabBarItem(
            title: "즐겨찾기",
            image: UIImage(systemName: "star"),
            selectedImage: UIImage(systemName: "star.fill"))
        
        viewControllers = [
            translateNavigationController,
            bookmarkNavigationController
        ]
    }
}
