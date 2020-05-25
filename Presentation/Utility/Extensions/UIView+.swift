//
//  UIView+.swift
//  Presentation
//
//  Created by ichikawa on 2020/05/26.
//

import UIKit

// MARK: - nib
extension UIView {
    
    static var nib: UINib {
        let bundle = Bundle(for: self)
        return UINib(nibName: self.className, bundle: bundle)
    }
}

// MARK: - class name
extension UIView {
    
    static var className: String {
        return String(describing: self)
    }
    
    var className: String {
        return type(of: self).className
    }
}
