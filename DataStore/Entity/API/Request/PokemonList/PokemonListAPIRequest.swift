//
//  PokemonListAPIRequest.swift
//  DataStore
//
//  Created by ichikawa on 2020/05/25.
//

import Foundation

struct PokemonListAPIRequest: PokeAPIRequestable {

    let offset: Int = 0

    let limit: Int = 807

    var path: String {
        return "pokemon"
    }
}
