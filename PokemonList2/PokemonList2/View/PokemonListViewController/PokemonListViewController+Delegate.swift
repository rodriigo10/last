//
//  PokemonListViewController+Delegate.swift
//  PokemonList2
//
//  Created by Rodrigo Garcia on 03/04/22.
//

import UIKit

extension PokemonListViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let goToDetailsPokemon = self.storyboard?.instantiateViewController(withIdentifier: controller.identifierScreen) as? DetailsPokemonViewController
        {
            goToDetailsPokemon.controller.setPokemonSelected(result: controller.pokemonByIndex(indexPath: indexPath))
            self.present(goToDetailsPokemon, animated: true, completion: nil)
        }
    }
}
