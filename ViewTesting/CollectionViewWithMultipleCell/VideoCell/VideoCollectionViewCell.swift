//
//  VideoCollectionViewCell.swift
//  ViewTesting
//
//  Created by zin min phyo on 04/10/2020.
//

import UIKit

class VideoCollectionViewCell: UICollectionViewCell {

    @IBOutlet var imageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func render(image: UIImage){
        imageView.image = image
    }

}
