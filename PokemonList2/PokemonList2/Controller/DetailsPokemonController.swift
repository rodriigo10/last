//
//  DetailsPokemonController.swift
//  PokemonList2
//
//  Created by Rodrigo Garcia on 07/04/22.
//

import UIKit
import Alamofire

class DetailsPokemonController: NSObject {
    
    private var pokemonSelected: Result? //implementado para que seja acessado somente na controller.
    var requestPokemonDetails = RequestDetails()
    private var pokemonDetail: DetailsPokemon?
    
    func setPokemonSelected(result: Result?) {
        self.pokemonSelected = result
    }
    
    var urlDetails: String {
        return pokemonSelected?.url ?? ""
    }
    
    var urlPokemonImage: URL?{
        return URL(string: pokemonDetail?.sprites?.frontDefault ?? "")
    }
    
    var labelPokemonDetails: String {
        return pokemonDetail?.name ?? ""
    }
    
    var identifierCell: String{
        return "PokemonListCell"
    }
    
    var identifierNib: String {
        return "PokemonListTableViewCell"
    }
    
    var numberOfRowsGameIndex: Int {
        return pokemonDetail?.gameIndices?.count ?? 0
    }
    
    var numberOfRowsAbiilities: Int {
        return pokemonDetail?.abilities?.count ?? 0
    }
    
    func getGamesById (indexPath: IndexPath) -> GameIndex? {
        return pokemonDetail?.gameIndices?[indexPath.row]
    }
    
    func getAbilitiesById (indexPath: IndexPath) -> Ability? {
        return pokemonDetail?.abilities?[indexPath.row]
    }
    
    func requestDetails(url: String, completion: @escaping (Bool) -> Void){
        requestPokemonDetails.requestDetails(url: url) { detailPokemon, sucess in
            if sucess {
                self.pokemonDetail = detailPokemon
                completion(true)
            } else {
                completion(false)
            }
            
            
        }
    }
}
