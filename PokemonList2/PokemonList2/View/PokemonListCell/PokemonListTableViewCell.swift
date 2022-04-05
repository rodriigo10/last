//
//  PokemonListTableViewCell.swift
//  PokemonList2
//
//  Created by Rodrigo Garcia on 03/04/22.
//

import UIKit

class PokemonListTableViewCell: UITableViewCell {

    @IBOutlet weak var namePokemon: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func pokeListCell(result: Result?){
        namePokemon.text = result?.name ?? ""
    }
}

