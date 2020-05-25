//
//  UITableViewCell+.swift
//  Presentation
//
//  Created by ichikawa on 2020/05/26.
//

import UIKit

extension UITableView {
    
    func register<T: UITableViewCell>(_ cellType: T.Type) {
        self.register(cellType.nib, forCellReuseIdentifier: cellType.className)
    }
}
