//
//  PokemonDetailTranslator.swift
//  Domain
//
//  Created by ichikawa on 2020/05/29.
//

import Foundation
import DataStore

enum PokemonDetailTranslatorProvider {

    static func provide() -> PokemonDetailTranslator {
        return PokemonDetailTranslatorImpl()
    }
}

protocol PokemonDetailTranslator {
    func convert(from response: PokemonDetailResponse) -> PokemonDetailModel
}

private struct PokemonDetailTranslatorImpl: PokemonDetailTranslator {

    func convert(from response: PokemonDetailResponse) -> PokemonDetailModel {
        PokemonDetailModel(response)
    }
}
