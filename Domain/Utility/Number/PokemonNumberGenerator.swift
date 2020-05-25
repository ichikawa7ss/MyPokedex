//
//  PokemonNumberGenerator.swift
//  Domain
//
//  Created by ichikawa on 2020/05/25.
//

import Foundation

enum PokemonNumberGenerator {
    
    static func generate(from url: String) -> Int {
        var removePrefix = url.replacingOccurrences(of: "https://pokeapi.co/api/v2/pokemon/", with: "")
        removePrefix.removeLast()
        return Int(removePrefix) ?? 0
    }
}
