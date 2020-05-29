//
//  PokemonDetailBuilder.swift
//  MyPokedex
//
//  Created by ichikawa7ss on 28/05/2020.
//  Copyright © 2020 my company. All rights reserved.
//

import UIKit
import Domain

enum PokemonDetailBuilder {

    static func build(number: Int) -> UIViewController {
        let view = PokemonDetailViewController.instantiate()
        let presenter = PokemonDetailPresenterImpl(number: number)
        let wireframe = PokemonDetailWireframeImpl()

        view.presenter = presenter

        presenter.view = view
        presenter.wireframe = wireframe
        presenter.useCase = PokemonDetailUseCaseProvider.provide()

        wireframe.viewController = view

        return view
    }
}
