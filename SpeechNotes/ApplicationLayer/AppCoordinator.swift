//
//  AppCoordinator.swift
//  SpeechNotes
//
//  Created by Amg on 11/08/2020.
//  Copyright © 2020 Amg-Gauthier. All rights reserved.
//

import Foundation
import UIKit

class Appcoordinator: Coordinator {
    
    // MARK: - Private Properties
    
    private let window: UIWindow
    private var startCoordinator: Coordinator?
    
    // MARK: - Init
    
    init(window: UIWindow) {
        self.window = window
    }
    
    // MARK: - Public Methods
    
    func start() {
        let navigationController = UINavigationController()
        
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
        startCoordinator = MenuCoordinator(navigationController: navigationController)
        
        guard let nextCoordinator = startCoordinator else { return }
        coordinate(to: nextCoordinator)
    }
}
