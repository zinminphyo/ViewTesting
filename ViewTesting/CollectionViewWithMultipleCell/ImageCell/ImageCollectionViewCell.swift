//
//  ImageCollectionViewCell.swift
//  ViewTesting
//
//  Created by zin min phyo on 04/10/2020.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {

    
    @IBOutlet var imageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func render(image: UIImage) {
        imageView.image = image
    }
    
    override func prepareForReuse() {
        
    }

}
