//
//  ContentView.swift
//  PokemonApplication
//
//  Created by Sei Mouk on 15/9/24.
//

import SwiftUI

struct ContentView: View {
    @State var pokemons: [Pokemon] = []
    @State var sprites: [BackDefault] = []
    var names: [String] = ["Leo", "Morpeko"]
    
    var body: some View {
        VStack {
            List(pokemons, id: \.self) { pokemon in
                Text(pokemon.name)
            }

        }
        .onAppear(perform: {
            PokemonViewModel.shared.fetchData{
                pokemon in
                self.pokemons = pokemon
            }
        })
        .padding()
    }
}

#Preview {
    ContentView()
}
