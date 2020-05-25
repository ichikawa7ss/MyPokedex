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
    
    @IBOutlet private weak var tableView: UITableView! {
        willSet {
            newValue.register(PokemonListTableViewCell.nib, forCellReuseIdentifier: <#T##String#>)
            newValue.contentInset.top = 24
            newValue.contentInset.bottom = 16
        }
    }
    
}

// MARK: - Life cycle
extension PokemonListViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter.fetchPokemonList()
    }
}

// MARK: - PokemonListView
extension PokemonListViewController: PokemonListView {
}

// MARK: - TableViewDataSource
