//
//  PokemonListController.swift
//  PokemonList2
//
//  Created by Rodrigo Garcia on 03/04/22.
//
import UIKit

class PokemonListController: NSObject {
    
    let request = Request() //instancia da Request criada
    private var pokemonList: PokemonList? // Variavel global com private, ou seja para nao permitir que a model seja chamada dentro da view
    
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
    
    func pokemonByIndex (indexPath: IndexPath) -> Result? { //funcao criada para pegar o item selecionado
        return pokemonList?.results?[indexPath.row]
    }
    
    var identifierCell: String{
        return "PokemonListCell"
    }
    
    var identifierNib: String {
        return "PokemonListTableViewCell"
    }
    
    var identifierScreen: String {
        return "pokemonDetails"
    }
}
