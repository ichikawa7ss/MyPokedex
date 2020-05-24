//
//  PokemonListWireframe.swift
//  MyPokedex
//
//  Created by ichikawa7ss on 24/05/2020.
//  Copyright © 2020 my company. All rights reserved.
//

import UIKit

protocol PokemonListWireframe: AnyObject {}

final class PokemonListWireframeImpl: PokemonListWireframe {

    weak var viewController: UIViewController?
}
