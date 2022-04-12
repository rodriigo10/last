//
//  Home.swift
//  PokemonList2
//
//  Created by Rodrigo Garcia on 07/04/22.
//

import Foundation

// MARK: - Home
struct Home: Codable {
    let frontDefault: String?
    let frontFemale: String?
    let frontShiny: String?
    let frontShinyFemale: String?

    enum CodingKeys: String, CodingKey {
        case frontDefault = "front_default"
        case frontFemale = "front_female"
        case frontShiny = "front_shiny"
        case frontShinyFemale = "front_shiny_female"
    }
}
