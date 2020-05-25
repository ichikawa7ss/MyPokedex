//
//  PokemonListTranslator.swift
//  Domain
//
//  Created by ichikawa on 2020/05/25.
//

import Foundation
import DataStore

enum PokemonListTranslatorProvider {

    static func provide() -> PokemonListTranslator {
        return PokemonListTranslatorImpl()
    }
}

protocol PokemonListTranslator {
    func convert(from response: PokemonListResponse) -> PokemonListModel
}

private struct PokemonListTranslatorImpl: PokemonListTranslator {

    func convert(from response: PokemonListResponse) -> PokemonListModel {
        return PokemonListModel(response)
    }
}
