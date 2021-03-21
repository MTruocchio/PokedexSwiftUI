//
//  Pokemon.swift
//  PokedexSwiftUI
//
//  Created by Marcelino Santana Truocchio on 20/03/21.
//

import Foundation

struct Pokemon: Decodable, Identifiable {
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
}

let MOCK_POKEMON: [Pokemon] = [
    .init(id: 0, name: "Bubassaur", imageUrl: "bubassaur", type: "Poison" ),
    .init(id: 1, name: "Entei", imageUrl: "bubassaur", type: "Poison" ),
    .init(id: 2, name: "Pikachu", imageUrl: "bubassaur", type: "Electric" ),
    .init(id: 3, name: "Squarttle", imageUrl: "bubassaur", type: "Wather" ),
    .init(id: 4, name: "Blastoise", imageUrl: "bubassaur", type: "Wather" ),
    .init(id: 5, name: "Pidgeoto", imageUrl: "bubassaur", type: "Air" )
]
