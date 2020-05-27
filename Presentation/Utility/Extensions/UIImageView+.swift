//
//  UIImageView+.swift
//  Presentation
//
//  Created by ichikawa on 2020/05/27.
//

import UIKit
import Nuke

extension UIImageView {

    typealias Completion = (Result<UIImage, Error>) -> Void

    func loadImage(_ urlString: String, placeholder: UIImage? = nil, completion: Completion? = nil) {
        guard let url = URL(string: urlString) else {
            return
        }

        Nuke.loadImage(with: url, options: ImageLoadingOptions(placeholder: placeholder), into: self) { result in
            switch result {
            case .success(let response):
                completion?(.success(response.image))
            case .failure(let error):
                completion?(.failure(error))
            }
        }
    }
}
