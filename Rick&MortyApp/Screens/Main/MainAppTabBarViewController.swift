//
//  MainAppTabBarViewController.swift
//  Rick&MortyApp
//
//  Created by Andrei Goncharov on 11.01.2023.
//

import UIKit

class MainAppTabBarViewController: UITabBarController {
    
    private let locationsVC = UINavigationController(rootViewController: LocationsViewController())
    private let episodesVC = UINavigationController(rootViewController: EpisodesViewController())
    private let charactersVC = UINavigationController(rootViewController: CharactersViewController())

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUITabBarItems()
        configureTabBar()
    }
    
    private func configureUITabBarItems(){
        charactersVC.tabBarItem = UITabBarItem(title: "Characters", image: SFSymbols.charactersSymbol, tag: 0)
        locationsVC.tabBarItem = UITabBarItem(title: "Locations", image: SFSymbols.locationsSymbol, tag: 1)
        episodesVC.tabBarItem = UITabBarItem(title: "Episodes", image: SFSymbols.episodesSymbol, tag: 2)
    }
    
    private func configureTabBar(){
        tabBar.tintColor = .rickBlue
        setViewControllers([charactersVC, locationsVC, episodesVC], animated: true)
    }

}
