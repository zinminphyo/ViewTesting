//
// + Project: YomaConnect
// + Date   : 2020-07-30
//
// +--------------------------------------------------+
// | Copyright © 2020 Better HR. All rights reserved. |
// +--------------------------------------------------+
//
    

import Foundation
import UIKit.UIView


protocol LoadedByNib: UIView {
    
    /// View that is going to be attached by nib view when loaded from nib.
    var nibContainerView: UIView? { get }
    
    /// View loaded from the nib
    var nibContentView: UIView? { get set }
    
    /// Target nib file.
    ///
    /// Default implementation returns Current Class Name from its bundle.
    ///
    var nib: UINib { get }
    
    /// Load the view from nib.
    ///
    /// All task is handled by the default implementation.
    /// Implementers should not override this method.
    func loadFromNib()
}






extension LoadedByNib {
    // MARK: Container View Default Implementation
    var nibContainerView: UIView? { self }
}







extension LoadedByNib {
    // MARK: UINib Default Implementation
    
    private var nibName: String {
        type(of: self).description()
            .components(separatedBy: ".")
            .last ?? ""
    }
    
    
    var nib: UINib {
        UINib(
            nibName: nibName,
            bundle: Bundle(for: type(of: self))
        )
    }
}






extension LoadedByNib {
    // MARK: Nib Loading Default Implementation
    
    func loadFromNib() {
        
        if nibContentView != nil { return }
        
        if let view = nib.instantiate(
            withOwner: self, options: nil
        ).first as? UIView, let attachableView = nibContainerView {
            
            // assign content view
            nibContentView = view
            
            // trigger background color assignment
            backgroundColor = backgroundColor
            
            // layout content view
            view.translatesAutoresizingMaskIntoConstraints = false
            attachableView.addSubview(view)
            
            attachableView.topAnchor.constraint(
                equalTo: view.topAnchor,
                constant: 0
            ).isActive = true
            
            attachableView.bottomAnchor.constraint(
                equalTo: view.bottomAnchor,
                constant: 0
            ).isActive = true
            
            attachableView.leftAnchor.constraint(
                equalTo: view.leftAnchor,
                constant: 0
            ).isActive = true
            
            attachableView.rightAnchor.constraint(
                equalTo: view.rightAnchor,
                constant: 0
            ).isActive = true
        }
    }
    
}



// MARK: Custom Nib View
class NibView: UIView, LoadedByNib {
    
    override var backgroundColor: UIColor? {
        set {
            super.backgroundColor = newValue
            nibContentView?.backgroundColor = newValue
        }
        get { super.backgroundColor }
    }
    
    var nibContentView: UIView?
    
    override init(frame: CGRect) {
        super.init(frame: frame) ; loadFromNib()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder) ; loadFromNib()
    }
    
}



