//
//  OfficialArtwork.swift
//  PokemonList2
//
//  Created by Rodrigo Garcia on 07/04/22.
//

import Foundation

// MARK: - OfficialArtwork
struct OfficialArtwork: Codable {
    let frontDefault: String?

    enum CodingKeys: String, CodingKey {
        case frontDefault = "front_default"
    }
}
