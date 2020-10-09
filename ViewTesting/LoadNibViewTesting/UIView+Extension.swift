//
//  UIView+Extension.swift
//  ViewTesting
//
//  Created by zin min phyo on 09/10/2020.
//

import Foundation
import UIKit

extension UIView {
    
    func addSubView(
        _ subView: UIView,
        costrainedTo anchorsView: UIView
    ){
        addSubview(subView)
        subView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            subView.centerXAnchor.constraint(equalTo: anchorsView.centerXAnchor),
            subView.centerYAnchor.constraint(equalTo: anchorsView.centerYAnchor),
            subView.widthAnchor.constraint(equalTo: anchorsView.widthAnchor),
            subView.heightAnchor.constraint(equalTo: anchorsView.heightAnchor)
        ])
    }
    
}
