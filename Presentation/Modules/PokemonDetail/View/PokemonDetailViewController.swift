//
//  PokemonDetailViewController.swift
//  MyPokedex
//
//  Created by ichikawa7ss on 28/05/2020.
//  Copyright © 2020 my company. All rights reserved.
//

import UIKit
import Domain

protocol PokemonDetailView: AnyObject {
    func showPokemonDetailModel(_ model: PokemonDetailModel)
}

// MARK: - Properties
final class PokemonDetailViewController: UIViewController {

    var presenter: PokemonDetailPresenter!
}

// MARK: - Life cycle
extension PokemonDetailViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter.fetchPokemonDetail()
    }
}

// MARK: - PokemonDetailView
extension PokemonDetailViewController: PokemonDetailView {

    func showPokemonDetailModel(_ model: PokemonDetailModel) {
        print(model)
    }
}
