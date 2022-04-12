//
//  Request.swift
//  PokemonList2
//
//  Created by Rodrigo Garcia on 03/04/22.
//


import UIKit
import Alamofire

class Request: NSObject {
    
    func request(completion: @escaping (PokemonList?, Bool) -> Void){
        let param = ["limit":"151"]
        AF.request("https://pokeapi.co/api/v2/pokemon/", method: .get, parameters: param ).responseJSON { response in
            if response.response?.statusCode == 200 {
                
                do{
                    let pokemonList = try JSONDecoder().decode(PokemonList.self, from: response.data ?? Data())
                    completion(pokemonList, true)
                }catch{
                    completion(nil, false)
                }
            }else{
                completion(nil, false)
            }
        }
    }
}
