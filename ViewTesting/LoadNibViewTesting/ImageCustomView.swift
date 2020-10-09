//
//  ImageCustomView.swift
//  ViewTesting
//
//  Created by zin min phyo on 09/10/2020.
//

import UIKit


class ImageCustomView: NibView {
    
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var cancelButton: UIButton!
    @IBOutlet var saveButton: UIButton!

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    
    
    func render(
        image: UIImage?
    ){
        imageView.image = image
    }
    @IBAction func actionForButton(_ sender: UIButton) {
        
    }
    
}
