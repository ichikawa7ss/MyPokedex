//
//  PokemonListTableViewCell.swift
//  Presentation
//
//  Created by ichikawa on 2020/05/26.
//

import UIKit
import Domain

final class PokemonListTableViewCell: UITableViewCell {

    @IBOutlet private weak var pokemonImage: UIImageView!

    @IBOutlet private weak var numberLabel: UILabel!

    @IBOutlet private weak var nameLabel: UILabel!

    func configure(_ pokemon: PokemonListModel.Pokemon) {
        self.numberLabel.text = "No.\(pokemon.number.description)"
        self.nameLabel.text = pokemon.name
        self.pokemonImage.loadImage(pokemon.imageUrl)
    }
}
