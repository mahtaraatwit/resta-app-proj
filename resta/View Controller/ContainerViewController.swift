//
//  ContainerViewController.swift
//  resta
//
//  Created by amenm on 12/1/22.
//

import UIKit

class ContainerViewController: UIViewController {
    
    let homeVC = HomeViewController()
    
    let tabBarVC = UITabBarController()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .clear
        addChildVCs()
    }
    
    
    private func addChildVCs() {
        // Menu
        
        addChild(homeVC)
        view.addSubview(homeVC.view)
        homeVC.didMove(toParent: self)
        setupTabBar()
        
        view.addSubview(tabBarVC.view)
    }
    
    func setupTabBar() {
        // creating and presenting tabbar controller
        
        let homeVC = UINavigationController(rootViewController: HomeViewController())
        let timerVC = UINavigationController(rootViewController: TimerViewController())
        let calendarVC = UINavigationController(rootViewController: CalendarViewController())
        tabBarVC.setViewControllers([homeVC,timerVC,calendarVC], animated: false)
        
        guard let items = tabBarVC.tabBar.items else { return }
        
        homeVC.title = "Home"
        timerVC.title = "Timer"
        calendarVC.title = "Calendar"
        
        tabBarVC.tabBar.backgroundColor = .white
        tabBarVC.tabBar.tintColor = .customBackGroundColor
        
        let images = ["house","clock","calendar"]
        
        for x in 0..<items.count {
            items[x].image = UIImage(systemName: images[x])
        
            
        }
        
        tabBarVC.tabBar.isTranslucent = false
        
        
    }
    
}
