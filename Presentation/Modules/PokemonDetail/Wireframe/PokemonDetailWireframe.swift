//
//  PokemonDetailWireframe.swift
//  MyPokedex
//
//  Created by ichikawa7ss on 28/05/2020.
//  Copyright © 2020 my company. All rights reserved.
//

import UIKit

protocol PokemonDetailWireframe: AnyObject {}

final class PokemonDetailWireframeImpl: PokemonDetailWireframe {

    weak var viewController: UIViewController?
}
