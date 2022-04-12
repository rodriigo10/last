//
//  DetailsPokemonViewController+DataSource.swift
//  PokemonList2
//
//  Created by Rodrigo Garcia on 11/04/22.
//

import UIKit

extension DetailsPokemonViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == detailsGamesTableView {
            return controller.numberOfRowsGameIndex
        } else if tableView == detailsAbilityTableView {
            return controller.numberOfRowsAbiilities
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if tableView == detailsGamesTableView{
            let cell = tableView.dequeueReusableCell(withIdentifier: controller.identifierCell, for: indexPath) as? PokemonListTableViewCell
            cell?.pokeListCell(gameIndex: controller.getGamesById(indexPath: indexPath))
            return cell ?? UITableViewCell()
            
        } else if tableView == detailsAbilityTableView {
            let cell = tableView.dequeueReusableCell(withIdentifier: controller.identifierCell, for: indexPath) as? PokemonListTableViewCell
            cell?.pokeListCell(abilities: controller.getAbilitiesById(indexPath: indexPath))
            return cell ?? UITableViewCell()
        } else {
            return UITableViewCell()
        }
    }
}
