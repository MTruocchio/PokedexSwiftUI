//
//  PokedexView.swift
//  PokedexSwiftUI
//
//  Created by Marcelino Santana Truocchio on 20/03/21.
//

import SwiftUI

struct PokedexView: View {
    private let gridItens = [GridItem(.flexible()), GridItem(.flexible())]
    @ObservedObject var viewModel = PokemonViewModel()
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: gridItens, content: {
                    ForEach(viewModel.pokemon){
                        pokemon in PokemonCard(pokemon:pokemon, viewModel: viewModel)
                    }
                } )
            }
            .navigationTitle("Pokedex")
        }
    }
}

struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}
