//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Tiberiu Rares Salomie on 23/1/24.
//

import UIKit

final class RMTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabs()
    }
    
    func setUpTabs() {
        let characterVC = RMCharacterViewController()
        let episodeVC = RMEpisodeViewController()
        let locationVC = RMLocationViewController()
        let settingsVC = RMSettingsViewController()
        
        characterVC.navigationItem.largeTitleDisplayMode = .automatic
        episodeVC.navigationItem.largeTitleDisplayMode = .automatic
        locationVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        let navChar = UINavigationController(rootViewController: characterVC)
        let navEpi = UINavigationController(rootViewController: episodeVC)
        let navLoc = UINavigationController(rootViewController: locationVC)
        let navSett = UINavigationController(rootViewController: settingsVC)
        
        navChar.tabBarItem = UITabBarItem(title: "Characters",
                                          image: UIImage(systemName: "person"),
                                          tag: 1)
        navEpi.tabBarItem = UITabBarItem(title: "Episodes",
                                          image: UIImage(systemName: "globe"),
                                          tag: 2)
        navLoc.tabBarItem = UITabBarItem(title: "Locations",
                                          image: UIImage(systemName: "tv"),
                                          tag: 3)
        navSett.tabBarItem = UITabBarItem(title: "Settings",
                                          image: UIImage(systemName: "gear"),
                                          tag: 4)
        
        for nav in [navChar,navEpi,navLoc,navSett] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers([navChar,navEpi,navLoc,navSett], animated: true)
        
    }


}

