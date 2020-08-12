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
    
    private var notes = Notes.all
    
    // MARK: - Override
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setCollectionView()
    }
    
    // MARK: - Private Methods
    
    private func setCollectionView() {
        register(MenuCollectionViewCell.self, forCellWithReuseIdentifier: "menuCell")
    }
}

// MARK: - Collection Data Source
extension MenuCollectionView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return notes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "menuCell", for: indexPath) as? MenuCollectionViewCell else { return UICollectionViewCell() }
        
        cell.configureCell(notes: notes[indexPath.row])
        
        return cell
    }
}

// MARK: - Collection Delegate
extension MenuCollectionView: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}
