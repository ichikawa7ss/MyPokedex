//
//  PokemonListModel.swift
//  Domain
//
//  Created by ichikawa on 2020/05/25.
//

import Foundation
import DataStore

public struct PokemonListModel {

    let count: Int
    let pokemons: [Pokemon]
}

extension PokemonListModel {

    init(_ response: PokemonListResponse) {
        self.count = response.count
        self.pokemons = response.results.map { Pokemon($0) }
    }
}

extension PokemonListModel {

    struct Pokemon {

        let name: String
        let number: Int
        let imageUrl: String
    }
}

extension PokemonListModel.Pokemon {
    
    init(_ pokemon: PokemonListResponse.Result) {
        self.name = pokemon.name
        self.number = PokemonNumberGenerator.generate(from: pokemon.url)
        self.imageUrl = PokemonImageURLGenerator.generate(from: self.number)
    }
}
