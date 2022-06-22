//
//  Pokemon.swift
//  Pokedex
//
//  Created by Erasmo J.F Da Silva on 22/06/22.
//https://pokeapi.co/api/v2/pokemon/?offset=0&limit=151
//  SwiftUI ♡ Better Apps. Less Code
//  https://erasmojf.github.io/
//  Fidju de Bideira de Feira de Caracol

import Foundation

struct Pokemon : Codable {
    var results: [PokemonEntry]
}


struct PokemonEntry: Codable, Identifiable {
    let id = UUID()
    var name: String
    var url: String
}


class PokeApi {
    func gerData(completion: @escaping ([PokemonEntry]) -> ()) {
        guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon/?offset=0&limit=151") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) {(data, _, _) in
            guard let data = data else { return }
            
            let pokemonList = try! JSONDecoder().decode(Pokemon.self, from: data)
            DispatchQueue.main.async {
                completion(pokemonList.results)
            }
        }.resume()
    }
}
