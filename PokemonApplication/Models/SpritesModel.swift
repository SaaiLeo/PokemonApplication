//
//  Sprites.swift
//  PokemonApplication
//
//  Created by Sei Mouk on 15/9/24.
//

import Foundation

struct SpriteModel: Codable {
    let sprites: [BackDefault]
    
}

struct BackDefault: Codable, Hashable {
    let back_default: String
}
