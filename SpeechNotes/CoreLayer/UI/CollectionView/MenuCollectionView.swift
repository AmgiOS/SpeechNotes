//
//  MenuCollectionView.swift
//  SpeechNotes
//
//  Created by Amg on 12/08/2020.
//  Copyright © 2020 Amg-Gauthier. All rights reserved.
//

import Foundation
import UIKit

class MenuCollectionView: UICollectionView {
    
    // MARK: - Public Properties
    
    // MARK: - Override
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
    }
    
    // MARK: - Private Methods
    
    
}

// MARK: - Collection Data Source
extension MenuCollectionView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
}

// MARK: - Collection Delegate
extension MenuCollectionView: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}
