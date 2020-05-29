//
//  PokemonDetailRequest.swift
//  DataStore
//
//  Created by ichikawa on 2020/05/29.
//

import Foundation

struct PokemonDetailRequest: PokeAPIRequestable {

    let id: Int

    var path: String {
        return "/pokemon/\(self.id.description)"
    }
}
