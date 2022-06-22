//
//  ContentView.swift
//  Pokedex
//
//  Created by Erasmo J.F Da Silva on 22/06/22.
//  SwiftUI ♡ Better Apps. Less Code
//  https://erasmojf.github.io/
//  Fidju de Bideira de Feira de Caracol

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
            .onAppear {
                PokemonSelectedApi().gerData(url: "https://pokeapi.co/api/v2/pokemon/2/") { url in
                    print(url)
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


