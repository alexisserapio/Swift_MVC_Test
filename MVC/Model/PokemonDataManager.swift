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
    
    let pokemonDictionary_movement: [Int: String] = [
            0: "Semi-Aquatic",
            1: "Overgrow",
            2: "Rapid Spin Move",
            3: "Flying Bug Type",
            4: "Sunbathing Sleep",
            5: "Fast Mid-air movement",
            6: "Fiery Tail Flame",
            7: "Fake out",
            8: "Shadowy Blow",
            9: "Powerful Aerial Movements",
            10: "Volt Switch",
            11: "Tackle Movement",
            12: "Water Absorb Movement",
            13: "Walk Rhythmically",
            14: "Seek the sunlight",
            15: "Quick Movement",
            16: "Psychic Confusion Movement",
            17: "Blizzard Surf",
            18: "Flying",
            19: "Hyper Voice",
            20: "Wing Attack Movement",
            21: "Calm Mind Movement",
            22: "Bubble Movement",
            23: "Digging Movement"
        ];
    
    let pokemonDictionary_skill: [Int: String] = [
            0: "Water Gun",
            1: "Vine Whip",
            2: "Hydro Cannon",
            3: "Sleep Powder",
            4: "Vine Whip",
            5: "Sing",
            6: "Ember",
            7: "Fury Swipes",
            8: "Shadow Ball",
            9: "Wing Attack",
            10: "Wild Charge",
            11: "Thunderbolt",
            12: "Hydro Pump",
            13: "Lovely Kiss",
            14: "Razor Leaf",
            15: "Flamethrower",
            16: "Amnesia",
            17: "Headbutt",
            18: "Drill Peck",
            19: "Hyper Voice",
            20: "Focus Energy",
            21: "Aqua Jet",
            22: "Water Pulse",
            23: "Sand Attack"
        ];
    
    func fetchPokemon(){
        let sortedPokemon = pokemonDictionary.sorted { $0.key < $1.key }// Ordena por la clave
        
//        let sortedSkills = pokemonDictionary_skill.sorted { $0.key < $1.key }// Ordena por la clave
//        
//        let sortedMovements = pokemonDictionary_movement.sorted { $0.key < $1.key}
        
        for pokemon in sortedPokemon {
            pokemons.append(Pokemon(image_id: pokemon.key, name: pokemon.value, movement: pokemonDictionary_movement[pokemon.key]!, skill: pokemonDictionary_skill[pokemon.key]!))
        }
    }
    
    func getPokemon(at index : Int) -> Pokemon{
        return pokemons[index]
    }
    
    func count() -> Int {
        return pokemons.count
    }
    
}

