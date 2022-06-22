//
//  PokemonSelected.swift
//  Pokedex
//
//  Created by Erasmo J.F Da Silva on 22/06/22.
//  SwiftUI ♡ Better Apps. Less Code
//  https://erasmojf.github.io/
//  Fidju de Bideira de Feira de Caracol
//"https://pokeapi.co/api/v2/pokemon/?offset=0&limit=151"

import Foundation

struct PokemonSelected: Codable {
    var sprites: PokemonSprites
    var weight: Int
}


struct PokemonSprites: Codable {
    var front_default: String
}


class PokemonSelectedApi {
    func gerData(url: String , completion: @escaping (PokemonSprites) -> ()) {
        guard let url = URL(string: url) else { return }
        
        URLSession.shared.dataTask(with: url) {(data, _, _) in
            guard let data = data else { return }
            
            let pokemonSprite = try! JSONDecoder().decode(PokemonSelected.self, from: data)
            DispatchQueue.main.async {
                completion(pokemonSprite.sprites)
            }
        }.resume()
    }
}
