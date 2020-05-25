//
//  PokemonListResponse.swift
//  Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

public struct PokemonListResponse : Codable {

    public let count : Int
    public let next : String?
    public let previous : String?
    public let results : [Result]

}

extension PokemonListResponse {
    public struct Result : Codable {
        public let name : String
        public let url : String
    }
}
