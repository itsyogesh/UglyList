//
//  UglyCell.swift
//  UglyStuff
//
//  Created by Yogesh Kumar on 29/02/16.
//  Copyright © 2016 itsyogesh. All rights reserved.
//

import UIKit

class UglyCell: UITableViewCell {
    
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var mainLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.cornerRadius = 5.0
        mainImage.clipsToBounds = true
    }
    
    func configureCell(image: UIImage, text: String) {
        mainImage.image = image
        mainLabel.text = text
    }
}
