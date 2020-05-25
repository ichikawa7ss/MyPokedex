//
//  PokemonListBuilder.swift
//  MyPokedex
//
//  Created by ichikawa7ss on 24/05/2020.
//  Copyright © 2020 my company. All rights reserved.
//

import UIKit
import Domain

public enum PokemonListBuilder {

    public static func build() -> UIViewController {
        let view = PokemonListViewController.instantiate()
        let presenter = PokemonListPresenterImpl()
        let wireframe = PokemonListWireframeImpl()

        view.presenter = presenter

        presenter.view = view
        presenter.wireframe = wireframe
        presenter.useCase = PokemonListUseCaseProvider.provide()

        wireframe.viewController = view

        return view
    }
}
