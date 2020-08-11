//
//  MainCoordinator.swift
//  SpeechNotes
//
//  Created by Amg on 12/08/2020.
//  Copyright © 2020 Amg-Gauthier. All rights reserved.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    
    // MARK: - Public Properties
    
    public var navigationController: UINavigationController
    
    public var hideNavigationController: Bool {
        return true
    }
    
    // MARK: - Init
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.navigationController.navigationBar.isHidden = hideNavigationController
    }
    
    // MARK: - Public Methods
    
    func start() {}
}
