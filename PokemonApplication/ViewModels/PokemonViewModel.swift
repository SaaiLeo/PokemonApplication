//
//  PokemonViewModel.swift
//  PokemonApplication
//
//  Created by Sei Mouk on 15/9/24.
//

import Foundation

struct PokemonViewModel {
    
    static let shared = PokemonViewModel() // 
    
    func fetchData(completion: @escaping ([Pokemon]) -> ()) {
        let url = "https://pokeapi.co/api/v2/pokemon?limit=151";
        guard let urlConvert = URL(string: url) else {return}
        URLSession.shared.dataTask(with: urlConvert) { data, response, error in
            if error == nil {
                guard let data = data else {return}
                do {
                    let result = try JSONDecoder().decode(PokemonModel.self, from: data)
                    completion(result.result)
                } catch {
                    print(error)
                }
            }
        }.resume()
    }
}
