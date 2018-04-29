//
//  DogCell.swift
//  Dogs
//
//  Created by Brian Vo on 2018-04-29.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

import UIKit

class DogCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var dogLabel: UILabel!
    
    func displayContent(image: UIImage, title: String) {
        imageView.image = image
        dogLabel.text = title
    }
    
}
