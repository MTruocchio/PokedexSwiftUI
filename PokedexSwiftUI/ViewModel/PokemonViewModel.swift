//
//  PokemonViewModel.swift
//  PokedexSwiftUI
//
//  Created by Marcelino Santana Truocchio on 21/03/21.
//
import SwiftUI
import Foundation

class PokemonViewModel: ObservableObject{
    @Published var pokemon = [Pokemon]()
    let baseURL = "https://pokedex-bb36f.firebaseio.com/pokemon.json"
    
    init(){
        fetchPokemon()
    }
    
    func fetchPokemon(){
        guard let url = URL(string: baseURL) else {return}
        URLSession.shared.dataTask(with:url){(data, response, error) in
            guard let data = data?.parseData(removeString: "null,") else {return}
            guard let pokemon = try? JSONDecoder().decode([Pokemon].self, from: data) else {return}
            
            DispatchQueue.main.async {
                self.pokemon = pokemon
            }
        }.resume()
    }
    
    func backgroundColor(forType type: String) -> UIColor{
        switch type {
        case "fire": return .systemRed
        case "poison": return .systemGreen
        case "water": return .systemTeal
        case "ground": return .systemGray
        case "electric": return .systemYellow
        case "normal": return .systemOrange
        case "flying": return .systemBlue
        case "psychic": return .systemPurple
        case "fairy": return .systemPink
        default:
            return .systemGray
        }
    }
}

extension Data{
    func parseData(removeString string: String) -> Data? {
        let dataAsString = String(data:self, encoding: .utf8)
        let parseDataString = dataAsString?.replacingOccurrences(of: string, with: "")
        guard let data = parseDataString?.data(using: .utf8) else {return nil}
        return data
    }
}
