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
    @StateObject var vm = ViewModel()
    var body: some View {
        VStack {
            Text("Hello, world!")
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


