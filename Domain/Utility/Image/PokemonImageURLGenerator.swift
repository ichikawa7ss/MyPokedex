//
//  PokemonImageURLGenerator.swift
//  Domain
//
//  Created by ichikawa on 2020/05/25.
//

import Foundation

enum PokemonImageURLGenerator {

    static func generate(from id: Int) -> String {
        let formatId = String(format: "%03d", id)
        let imageUrl = "https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/\(formatId).png"
        return imageUrl
    }
}
