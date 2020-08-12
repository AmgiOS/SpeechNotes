//
//  MenuViewController.swift
//  SpeechNotes
//
//  Created by Amg on 11/08/2020.
//  Copyright © 2020 Amg-Gauthier. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    // MARK: - Private Properties
    
    
    // MARK: - Outlets
    
    @IBOutlet weak var settingsButton: UIButton!
    @IBOutlet weak var addNotesButton: UIButton!
    @IBOutlet weak var menuCollectionView: MenuCollectionView!
    
    // MARK: - LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK: - Private Methods
}
