//
//  PokemonDetailModel.swift
//  Domain
//
//  Created by ichikawa on 2020/05/29.
//

import Foundation
import DataStore

public struct PokemonDetailModel {

    let number: Int
    let name: String
    let types: [PokemonDetailResponse.PokemonType]
    let height: Int
    let weight: Int
    let abilities: [PokemonDetailResponse.PokemonAbility]
    let stats: [PokemonDetailResponse.PokemonStat]
}

extension PokemonDetailModel {

    init(_ response: PokemonDetailResponse) {
        self.number = response.id
        self.name = response.name
        self.types = response.types
        self.height = response.height
        self.weight = response.weight
        self.abilities = response.abilities
        self.stats = response.stats
    }
}
