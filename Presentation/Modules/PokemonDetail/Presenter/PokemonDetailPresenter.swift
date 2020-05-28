//
//  PokemonDetailPresenter.swift
//  MyPokedex
//
//  Created by ichikawa7ss on 28/05/2020.
//  Copyright © 2020 my company. All rights reserved.
//

protocol PokemonDetailPresenter {
    func printPokemonNumber()
}

final class PokemonDetailPresenterImpl: PokemonDetailPresenter {

    weak var view: PokemonDetailView?
    var wireframe: PokemonDetailWireframe!
    var pokemonNumber: Int!

    func printPokemonNumber() {
        print(self.pokemonNumber)
    }
}
