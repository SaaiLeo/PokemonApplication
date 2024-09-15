//
//  SpritesViewModel.swift
//  PokemonApplication
//
//  Created by Sei Mouk on 15/9/24.
//

import Foundation

struct SpritesViewModel {
    
    static let shared = SpritesViewModel()
    
    func fetchData(completion: @escaping ([BackDefault]) -> ()) {
        let url = "https://pokeapi.co/api/v2/pokemon/1/"
        guard let urlConvert = URL(string: url) else {return}
        URLSession.shared.dataTask(with: urlConvert) { data, response, error in
            if error == nil {
                guard let data = data else {return}
                do {
                    let result = try JSONDecoder().decode(SpriteModel.self, from: data)
                    completion(result.sprites)
                } catch {
                    print(error)
                }
            }
        }.resume()
    }
}
