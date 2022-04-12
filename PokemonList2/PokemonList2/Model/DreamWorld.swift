//
//  DreamWorld.swift
//  PokemonList2
//
//  Created by Rodrigo Garcia on 07/04/22.
//

import Foundation

// MARK: - DreamWorld
struct DreamWorld: Codable {
    let frontDefault: String?
    let frontFemale: String?

    enum CodingKeys: String, CodingKey {
        case frontDefault = "front_default"
        case frontFemale = "front_female"
    }
}
