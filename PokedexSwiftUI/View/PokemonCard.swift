//
//  PokemonCard.swift
//  PokedexSwiftUI
//
//  Created by Marcelino Santana Truocchio on 20/03/21.
//
    
import SwiftUI
import Kingfisher


struct PokemonCard: View {
    let pokemon: Pokemon
    let viewModel: PokemonViewModel
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                Text(pokemon.name)
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .padding(.top, 8)
                    .padding(.leading)
                HStack{
                    Text(pokemon.type)
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .padding(.horizontal,16)
                        .padding(.vertical,8)
                        .overlay(RoundedRectangle(cornerRadius:20).fill(Color.white.opacity(0.25))
                        )
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 24, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    KFImage(URL(string: pokemon.imageUrl))
                        .resizable()
                        .scaledToFit()
                        .frame(width:68,height: 68)
                        .padding([.bottom,.trailing],5)
                }
            }
        }
        .background(Color(viewModel.backgroundColor(forType: pokemon.type)))
        .cornerRadius(12)
        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 6, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/ )
    }
}

//struct PokemonCard_Previews: PreviewProvider {
//    static var previews: some View {
//        PokemonCard(pokemon:MOCK_POKEMON[3])
//    }
//}
