//
//  PokemonListUseCase.swift
//  Domain
//
//  Created by ichikawa on 2020/05/25.
//

import Foundation
import DataStore

public enum PokemonListUseCaseProvider {
    
    public static func provide() -> PokemonListUseCase {
        PokemonListUseCaseImpl(
            repository: PokemonListRepositoryProvider.provide(),
            translator: PokemonListTranslatorProvider.provide()
        )
    }
}

public protocol PokemonListUseCase {
    
    func get(completion: @escaping (Result<PokemonListModel, Error>) -> Void)
}

private struct PokemonListUseCaseImpl: PokemonListUseCase {

    let repository: PokemonListRepository
    let translator: PokemonListTranslator
    
    func get(completion: @escaping (Result<PokemonListModel, Error>) -> Void) {
        self.repository.get { result in
            switch result {
            case .success(let reponse):
                completion(.success(self.translator.convert(from: reponse)))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
