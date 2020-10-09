//
//  NibView.swift
//  ViewTesting
//
//  Created by zin min phyo on 09/10/2020.
//

import UIKit

@IBDesignable class NibViewTest: UIView {

    override func awakeFromNib() {
        super.awakeFromNib()
        addView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        addView()
    }
    
    func addView(){
        for _ in  Bundle(for: ImageCustomView.self)
            .loadNibNamed(String(describing: ImageCustomView.self), owner: self)! {
//            addSubView(view as! ImageCustomView, costrainedTo: self)
            
        }
    }

}
