//
//  PokemonDataManager.swift
//  MVC
//
//  Created by Alexis Serapio on 01/08/25.
//

import Foundation

class PokemonDataManager{
    private var pokemons: [Pokemon] = []
    
    let pokemonDictionary: [Int: String] = [
            0: "Wartortle",
            1: "Bulbasaur",
            2: "Blastoise",
            3: "Butterfree",
            4: "Ivysaur",
            5: "Jigglypuff",
            6: "Charmander",
            7: "Meowth",
            8: "Alakazam",
            9: "Pidgeotto",
            10: "Raichu",
            11: "Rattata",
            12: "Vaporeon",
            13: "Jynx",
            14: "Venusaur",
            15: "Vulpix",
            16: "Slowbro",
            17: "Seel",
            18: "Fearow",
            19: "Wigglytuff",
            20: "Scyther",
            21: "Golduck",
            22: "Lapras",
            23: "Sandshrew"
    ];
    
//    let pokemonDictionary_Movement: [Int: String] = [
//            0: "Wartortle",
//            1: "Bulbasaur",
//            2: "Blastoise",
//            3: "Butterfree",
//            4: "Ivysaur",
//            5: "Jigglypuff",
//            6: "Charmander",
//            7: "Meowth",
//            8: "Alakazam",
//            9: "Pidgeotto",
//            10: "Raichu",
//            11: "Rattata",
//            12: "Vaporeon",
//            13: "Jynx",
//            14: "Venusaur",
//            15: "Vulpix",
//            16: "Slowbro",
//            17: "Seel",
//            18: "Fearow",
//            19: "Wigglytuff",
//            20: "Scyther",
//            21: "Golduck",
//            22: "Lapras",
//            23: "Sandshrew"
//        ];
    
    func fetchPokemon(){
        let sortedPokemon = pokemonDictionary.sorted { $0.key < $1.key }// Ordena por la clave
        
        for pokemon in sortedPokemon {
            pokemons.append(Pokemon(image_id: pokemon.key, name: pokemon.value))
        }
    }
    
    func getPokemon(at index : Int) -> Pokemon{
        return pokemons[index]
    }
    
    func count() -> Int {
        return pokemons.count
    }
    
}

