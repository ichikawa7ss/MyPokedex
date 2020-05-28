//
//  PokemonListPresenter.swift
//  MyPokedex
//
//  Created by ichikawa7ss on 24/05/2020.
//  Copyright © 2020 my company. All rights reserved.
//

import Domain
import Foundation

protocol PokemonListPresenter {

    func fetchPokemonList()

    func pokemonListView(didSelectRowAt indexPath: IndexPath)
}

final class PokemonListPresenterImpl: PokemonListPresenter {

    weak var view: PokemonListView?
    var wireframe: PokemonListWireframe!
    var useCase: PokemonListUseCase!

    func fetchPokemonList() {
        self.useCase.get { result in
            switch result {
            case .success(let model):
                self.view?.showPokemonList(model)
            case .failure(let error):
                print(error)
            }
        }
    }

    func pokemonListView(didSelectRowAt indexPath: IndexPath) {
        let pokemonNunber = indexPath.row
        self.wireframe.pushPokemonDetail(number: pokemonNunber)
    }
}
