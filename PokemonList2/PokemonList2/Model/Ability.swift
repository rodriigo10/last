//
//  Ability.swift
//  PokemonList2
//
//  Created by Rodrigo Garcia on 06/04/22.
//

import Foundation

// MARK: - Ability
struct Ability: Codable {
    let ability: Species?
    let isHidden: Bool?
    let slot: Int?

    enum CodingKeys: String, CodingKey {
        case ability
        case isHidden = "is_hidden"
        case slot
    }
}
