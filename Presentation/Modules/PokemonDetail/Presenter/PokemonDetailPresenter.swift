//
//  PokemonDetailPresenter.swift
//  MyPokedex
//
//  Created by ichikawa7ss on 28/05/2020.
//  Copyright © 2020 my company. All rights reserved.
//

import Domain

protocol PokemonDetailPresenter {

    func fetchPokemonDetail()
}

final class PokemonDetailPresenterImpl: PokemonDetailPresenter {

    weak var view: PokemonDetailView?
    var wireframe: PokemonDetailWireframe!
    var useCase: PokemonDetailUseCase!

    let pokemonNumber: Int

    init(number: Int) {
        self.pokemonNumber = number
    }

    func fetchPokemonDetail() {
        self.useCase.get(id: self.pokemonNumber) { result in
            switch result {
            case .success(let model):
                self.view?.showPokemonDetailModel(model)
            case .failure(let error):
                print(error)
            }
        }
    }
}
