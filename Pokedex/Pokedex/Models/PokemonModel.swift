//
//  PokemonModel.swift
//  Pokedex
//
//  Created by Erasmo J.F Da Silva on 23/06/22.
//  SwiftUI ♡ Better Apps. Less Code
//  https://erasmojf.github.io/
//  Fidju de Bideira de Feira de Caracol

import Foundation

struct PokemonPage: Codable {
    let count: Int
    let next: String
    let results: [Pokemon]
}

struct Pokemon: Codable, Identifiable, Equatable {
    let id: UUID
    let name: String
    let url: String

    static var samplePokemon = Pokemon(id: UUID(), name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/")

    enum CodingKeys: String, CodingKey {
        case name
        case url
        case id
    }

    init(id: UUID, name: String, url: String) {
        self.id = id
        self.name = name
        self.url = url
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = UUID()
        name = try values.decode(String.self, forKey: .name)
        url = try values.decode(String.self, forKey: .url)
    }
}


struct DetailPokemon: Codable {
    let id: Int
    let height: Int
    let weight: Int
}
