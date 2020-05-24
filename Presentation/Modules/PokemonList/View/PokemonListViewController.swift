//
//  PokemonListViewController.swift
//  MyPokedex
//
//  Created by ichikawa7ss on 24/05/2020.
//  Copyright © 2020 my company. All rights reserved.
//

import UIKit

protocol PokemonListView: AnyObject {}

// MARK: - Properties
final class PokemonListViewController: UIViewController {

    var presenter: PokemonListPresenter!
}

// MARK: - Life cycle
extension PokemonListViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - PokemonListView
extension PokemonListViewController: PokemonListView {
}

