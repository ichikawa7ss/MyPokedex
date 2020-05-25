//
//  APIRequestable.swift
//  DataStore
//
//  Created by ichikawa on 2020/05/25.
//

import Foundation
import Alamofire

protocol APIRequestable: Encodable {

    var urlString: String { get }

    var method: HTTPMethod { get }

    var parameters: [String: Any] { get }

}

extension APIRequestable {

    var parameters: [String: Any] {
        let encoder = JSONEncoder()
        encoder.keyEncodingStrategy = .convertToSnakeCase
        return encoder.encodeToDictionary(self)
    }
}

private extension JSONEncoder {

    func encodeToDictionary<T: Encodable>(_ value: T) -> [String: Any] {
        do {
            let data = try self.encode(value)
            let jsonObject = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
            return (jsonObject as? [String: Any]) ?? [:]
        } catch let error {
            print(error.localizedDescription)
            return [:]
        }
    }
}
