//
//  PokemonListRepository.swift
//  DataStore
//
//  Created by ichikawa on 2020/05/25.
//

import Foundation

public enum PokemonListRepositoryProvider {
    
    public static func provide() -> PokemonListRepository {
        return PokemonListRepositoryImpl(apiDataStore: PokeAPIDataStoreProvider.provide())
    }
}

public protocol PokemonListRepository {
    func get(completion: @escaping (Result<PokemonListResponse, Error>) -> Void)
}

private struct PokemonListRepositoryImpl: PokemonListRepository {

    let apiDataStore: PokeAPIDataStore
    
    func get(completion: @escaping (Result<PokemonListResponse, Error>) -> Void) {
        self.apiDataStore.request(PokemonListAPIRequest(), completion: completion)
    }
}
