//
//  Emerald.swift
//  PokemonList2
//
//  Created by Rodrigo Garcia on 07/04/22.
//

import Foundation

// MARK: - Emerald
struct Emerald: Codable {
    let frontDefault, frontShiny: String?

    enum CodingKeys: String, CodingKey {
        case frontDefault = "front_default"
        case frontShiny = "front_shiny"
    }
}
