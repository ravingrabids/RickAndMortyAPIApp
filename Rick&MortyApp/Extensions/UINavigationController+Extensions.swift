//
//  UINavigationController+Extensions.swift
//  Rick&MortyApp
//
//  Created by Andrei Goncharov on 11.01.2023.
//

import Foundation
import UIKit
import Hero

extension UINavigationController {
    func show(_ viewController: UIViewController, navigationAnimationType: HeroDefaultAnimationType = .autoReverse(presenting: .slide(direction: .leading))) {
        viewController.hero.isEnabled = true
        hero.isEnabled = true
        hero.navigationAnimationType = navigationAnimationType
        pushViewController(viewController, animated: true)
    }
}
