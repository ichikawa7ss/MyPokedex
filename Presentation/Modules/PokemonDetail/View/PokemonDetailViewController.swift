//
//  PokemonDetailViewController.swift
//  MyPokedex
//
//  Created by ichikawa7ss on 28/05/2020.
//  Copyright © 2020 my company. All rights reserved.
//

import UIKit

protocol PokemonDetailView: AnyObject {}

// MARK: - Properties
final class PokemonDetailViewController: UIViewController {

    var presenter: PokemonDetailPresenter!
}

// MARK: - Life cycle
extension PokemonDetailViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter.printPokemonNumber()
    }
}

// MARK: - PokemonDetailView
extension PokemonDetailViewController: PokemonDetailView {
}
