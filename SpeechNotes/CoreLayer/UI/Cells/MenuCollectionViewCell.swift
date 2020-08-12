//
//  MenuCollectionViewCell.swift
//  SpeechNotes
//
//  Created by Amg on 12/08/2020.
//  Copyright © 2020 Amg-Gauthier. All rights reserved.
//

import UIKit

class MenuCollectionViewCell: UICollectionViewCell {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setUICell()
    }
    
    // MARK: - Private Properties
    
    private lazy var titleCell: UILabel = {
        var label = UILabel()
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        addSubview(label)
        return label
    }()
    
    private lazy var descriptionCell: UILabel = {
        var label = UILabel()
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        addSubview(label)
        return label
    }()
    
    // MARK: - Private Methods
    
    private func setUICell() {
        layer.cornerRadius = 20
        backgroundColor = .white
        
        NSLayoutConstraint.activate([
            titleCell.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            titleCell.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            titleCell.bottomAnchor.constraint(equalTo: descriptionCell.topAnchor, constant:8),
            
            descriptionCell.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            descriptionCell.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 8)
        ])
    }
}
