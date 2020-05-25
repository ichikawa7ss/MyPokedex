//
//  PokemonListAPIRequest.swift
//  DataStore
//
//  Created by ichikawa on 2020/05/25.
//

import Foundation

struct PokemonListAPIRequest: PokeAPIRequestable {

    var path: String {
        return "pokemon"
    }
}
