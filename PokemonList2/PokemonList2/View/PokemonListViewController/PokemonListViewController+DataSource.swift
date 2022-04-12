//
//  PokemonListViewController+DataSource.swift
//  PokemonList2
//
//  Created by Rodrigo Garcia on 03/04/22.
//

import UIKit

extension PokemonListViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return controller.numberOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier:  controller.identifierCell, for: indexPath) as? PokemonListTableViewCell{
            cell.pokeListCell(result: controller.pokemonByIndex(indexPath: indexPath))
            return cell
        } else{
            return UITableViewCell()
        }
    }
}
