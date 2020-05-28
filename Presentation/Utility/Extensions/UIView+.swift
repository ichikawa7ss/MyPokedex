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

// MARK: - Layer
extension UIView {

    @IBInspectable var shadowColor: UIColor {
        set {
            self.layer.shadowColor = newValue.cgColor
        }
        get {
            guard let cgColor = self.layer.shadowColor else {
                return .clear
            }
            return UIColor(cgColor: cgColor)
        }
    }

    @IBInspectable var shadowOpacity: Float {
        set {
            self.layer.shadowOpacity = newValue
        }
        get {
            return self.layer.shadowOpacity
        }
    }

    @IBInspectable var shadowOffset: CGSize {
        set {
            self.layer.shadowOffset = newValue
        }
        get {
            return self.layer.shadowOffset
        }
    }

    @IBInspectable var shadowRadius: CGFloat {
        set {
            self.layer.shadowRadius = newValue
        }
        get {
            return self.layer.shadowRadius
        }
    }
}
