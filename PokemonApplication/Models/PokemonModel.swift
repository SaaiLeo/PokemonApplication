//
//  Pokemon.swift
//  PokemonApplication
//
//  Created by Sei Mouk on 15/9/24.
//

import Foundation

struct PokemonModel: Codable {
    let result : [Pokemon]
    
    enum CodingKeys: String, CodingKey {
        case result = "results"
    }
}

struct Pokemon: Codable, Hashable{
    let name: String
    let url: String
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case url = "url"
    }
}


