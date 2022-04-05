//
//  PokemonListController.swift
//  PokemonList2
//
//  Created by Rodrigo Garcia on 03/04/22.
//
import UIKit

class PokemonListController: NSObject {
    
    let request = Request() //instancia da Request criada
    private var pokemonList: PokemonList? // Variavel global
    
    func requestPokemonList(completion: @escaping (Bool) -> Void){ //funçao da request para controller
        request.request{ [weak self] PokemonList, sucess in //funcao com parametro pedindo o boleano para saber quando a request termina de popular.
            if sucess{
                self?.pokemonList = PokemonList
                completion(true)
            }else {
                completion(false)
            }
        }
    }
    
    var numberOfRows: Int{
        return pokemonList?.results?.count ?? 0
    }
    
    func pokemonByIndex (indexPath: IndexPath) -> Result? {
        return pokemonList?.results?[indexPath.row]
    }
}
