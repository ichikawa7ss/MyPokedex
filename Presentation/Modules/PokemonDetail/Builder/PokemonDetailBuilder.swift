//
//  PokemonDetailBuilder.swift
//  MyPokedex
//
//  Created by ichikawa7ss on 28/05/2020.
//  Copyright © 2020 my company. All rights reserved.
//

import UIKit

enum PokemonDetailBuilder {

    static func build(number: Int) -> UIViewController {
        let view = PokemonDetailViewController.instantiate()
        let presenter = PokemonDetailPresenterImpl()
        let wireframe = PokemonDetailWireframeImpl()

        view.presenter = presenter

        presenter.view = view
        presenter.wireframe = wireframe
        presenter.pokemonNumber = number

        wireframe.viewController = view

        return view
    }
}
