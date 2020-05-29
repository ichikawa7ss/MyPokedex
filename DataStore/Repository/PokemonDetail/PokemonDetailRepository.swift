//
//  PokemonDetailRepository.swift
//  DataStore
//
//  Created by ichikawa on 2020/05/29.
//

import Foundation

public enum PokemonDetailRepositoryProvider {

    public static func provide() -> PokemonDetailRepository {
        return PokemonDetailRepositoryImpl(apiDataStore: PokeAPIDataStoreProvider.provide())
    }
}

public protocol PokemonDetailRepository {
    func get(_ id: Int, completion: @escaping (Result<PokemonDetailResponse, Error>) -> Void)
}

private struct PokemonDetailRepositoryImpl : PokemonDetailRepository {

    let apiDataStore: PokeAPIDataStore

    func get(_ id: Int, completion: @escaping (Result<PokemonDetailResponse, Error>) -> Void) {
        self.apiDataStore.request(PokemonDetailRequest(id: id), completion: completion)
    }
}
