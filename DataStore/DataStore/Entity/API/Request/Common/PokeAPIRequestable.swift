//
//  PokeAPIRequestable.swift
//  DataStore
//
//  Created by ichikawa on 2020/05/25.
//

import Foundation
import Alamofire

protocol PokeAPIRequestable: APIRequestable {
    
    var path: String { get }
}

extension PokeAPIRequestable {
    
    var urlString: String {
        return "https://pokeapi.co/api/v2/\(self.path)"
    }
    
    var method: HTTPMethod {
        return .get
    }
}
