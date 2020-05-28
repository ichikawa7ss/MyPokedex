//
//  TransitToPokemonDetailWireframe.swift
//  MyPokedex
//
//  Created by ichikawa7ss on 28/05/2020.
//  Copyright © 2020 my company. All rights reserved.
//

import UIKit

protocol TransitToPokemonDetailWireframe: AnyObject {

    var viewController: UIViewController? { get }

    func pushPokemonDetail(number: Int)
}

extension TransitToPokemonDetailWireframe {

    func pushPokemonDetail(number: Int) {
        let vc = PokemonDetailBuilder.build(number: number)
        self.viewController?.navigationController?.pushViewController(vc, animated: true)
    }
}
