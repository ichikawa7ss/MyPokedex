//
//  PokemonListViewController.swift
//  MyPokedex
//
//  Created by ichikawa7ss on 24/05/2020.
//  Copyright © 2020 my company. All rights reserved.
//

import UIKit
import Domain

protocol PokemonListView: AnyObject {
    func showPokemonList(_ model: PokemonListModel)
}

// MARK: - Properties
final class PokemonListViewController: UIViewController {

    var presenter: PokemonListPresenter!

    var pokemons = [PokemonListModel.Pokemon]()

    @IBOutlet private weak var tableView: UITableView! {
        willSet {
            newValue.register(PokemonListTableViewCell.self)
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
    func showPokemonList(_ model: PokemonListModel) {
        self.pokemons = model.pokemons
        self.tableView.reloadData()
    }
}

// MARK: - TableViewDataSource
extension PokemonListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.pokemons.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: PokemonListTableViewCell = tableView.dequeueReusableCell(for: indexPath)
        cell.configure(self.pokemons[indexPath.row])
        return cell
    }
}

// MARK: - TableViewDelegate
extension PokemonListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.presenter.pokemonListView(didSelectRowAt: indexPath)
    }
}
