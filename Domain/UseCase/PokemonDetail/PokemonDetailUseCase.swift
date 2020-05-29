//
//  PokemonDetailUseCase.swift
//  Domain
//
//  Created by ichikawa on 2020/05/29.
//

import Foundation
import DataStore

public enum PokemonDetailUseCaseProvider {

    public static func provide() -> PokemonDetailUseCase {
        PokemonDetailUseCaseImpl(
            repository: PokemonDetailRepositoryProvider.provide(),
            translator: PokemonDetailTranslatorProvider.provide()
        )
    }
}

public protocol PokemonDetailUseCase {

    func get(id: Int, completion: @escaping ((Result<PokemonDetailModel, Error>) -> Void))
}

private struct PokemonDetailUseCaseImpl: PokemonDetailUseCase {

    let repository: PokemonDetailRepository
    let translator: PokemonDetailTranslator

    func get(id: Int, completion: @escaping ((Result<PokemonDetailModel, Error>) -> Void)) {
        self.repository.get(id) { result in
            switch result {
            case .success(let response):
                completion(.success(self.translator.convert(from: response)))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
