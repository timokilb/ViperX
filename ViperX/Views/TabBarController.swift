//
//  TableViewController.swift
//  ViperX
//
//  Created by Deniz Dogan on 03.04.20.
//  Copyright © 2020 Deniz Dogan. All rights reserved.
//

import UIKit
import CoreData

class TabBarController: UITabBarController {
    
    var container: NSPersistentContainer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setViewControllers([PokedexViewController(), TestViewController()], animated: false)
        selectedIndex = 0
    }

}
