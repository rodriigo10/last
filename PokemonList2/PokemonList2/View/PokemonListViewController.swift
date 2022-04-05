//
//  ViewController.swift
//  PokemonList2
//
//  Created by Rodrigo Garcia on 03/04/22.
//

import UIKit

class PokemonListViewController: UIViewController {
    
    let controller = PokemonListController()
    
    @IBOutlet weak var pokemonListTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        pokemonlist()
    }
    
    func setupTableView(){
        self.pokemonListTableView.delegate = self
        self.pokemonListTableView.dataSource = self
        self.pokemonListTableView.register(UINib(nibName: "PokemonListTableViewCell", bundle: nil), forCellReuseIdentifier: "PokemonListCell")
    }
    
    func pokemonlist(){
        controller.requestPokemonList { [weak self]sucess in
            if sucess {
                self?.pokemonListTableView.reloadData()
            }else {
                //erro message
            }
        }
    }
    
}
