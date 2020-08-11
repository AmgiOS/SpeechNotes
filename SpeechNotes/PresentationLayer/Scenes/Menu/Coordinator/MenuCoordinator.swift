//
//  MenuCoordinator.swift
//  SpeechNotes
//
//  Created by Amg on 11/08/2020.
//  Copyright © 2020 Amg-Gauthier. All rights reserved.
//

import Foundation

class MenuCoordinator: MainCoordinator {
    
    // MARK: - Override
    
    override func start() {
        super.start()
        
        let menuViewController = MenuViewController()
        navigationController.pushViewController(menuViewController, animated: true)
    }
}
