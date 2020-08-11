//
//  Coordinator.swift
//  SpeechNotes
//
//  Created by Amg on 11/08/2020.
//  Copyright © 2020 Amg-Gauthier. All rights reserved.
//

import Foundation

protocol Coordinator {
    func start()
    func coordinate(to coordinator: Coordinator)
}

// MARK: - Base Coordinator
extension Coordinator {
    func coordinate(to coordinator: Coordinator) {
        coordinator.start()
    }
}
