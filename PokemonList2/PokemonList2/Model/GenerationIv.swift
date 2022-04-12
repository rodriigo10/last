//
//  GenerationIv.swift
//  PokemonList2
//
//  Created by Rodrigo Garcia on 07/04/22.
//

import Foundation

// MARK: - GenerationIv
struct GenerationIv: Codable {
    let diamondPearl, heartgoldSoulsilver, platinum: Sprites?

    enum CodingKeys: String, CodingKey {
        case diamondPearl = "diamond-pearl"
        case heartgoldSoulsilver = "heartgold-soulsilver"
        case platinum
    }
}
