//
//  PokemonListModel.swift
//  Domain
//
//  Created by ichikawa on 2020/05/25.
//

import Foundation
import DataStore

public struct PokemonListModel {

    public let count: Int
    public let pokemons: [Pokemon]
}

extension PokemonListModel {

    init(_ response: PokemonListResponse) {
        self.count = response.count
        self.pokemons = response.results.map { Pokemon($0) }
    }
}

public extension PokemonListModel {

    struct Pokemon {

        public let name: String
        public let number: Int
        public let imageUrl: String
    }
}

extension PokemonListModel.Pokemon {

    init(_ pokemon: PokemonListResponse.Result) {
        self.name = pokemon.name
        self.number = PokemonNumberGenerator.generate(from: pokemon.url)
        self.imageUrl = PokemonImageURLGenerator.generate(from: self.number)
    }
}
