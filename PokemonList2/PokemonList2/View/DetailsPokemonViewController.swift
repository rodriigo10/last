//
//  DetailsPokemonViewController.swift
//  PokemonList2
//
//  Created by Rodrigo Garcia on 07/04/22.
//

import UIKit
import SDWebImage

class DetailsPokemonViewController: UIViewController {
    
    @IBOutlet weak var detailsImage: UIImageView!
    @IBOutlet weak var detailsGamesTableView: UITableView!
    @IBOutlet weak var detailsAbilityTableView: UITableView!
    @IBOutlet weak var detailsLabel: UILabel!
    
    let controller = DetailsPokemonController ()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setRequest()
        setupTableView()
        setupUI()
       
        // Do any additional setup after loading the view.
    }
    
    func setupTableView(){
        self.detailsGamesTableView.dataSource = self
        self.detailsGamesTableView.delegate = self
        self.detailsAbilityTableView.dataSource = self
        self.detailsAbilityTableView.delegate = self
        self.detailsAbilityTableView.register(UINib(nibName: controller.identifierNib, bundle: nil), forCellReuseIdentifier: controller.identifierCell)
        self.detailsGamesTableView.register(UINib(nibName: controller.identifierNib, bundle: nil), forCellReuseIdentifier: controller.identifierCell)

    }
    
    func setupUI(){
        self.detailsGamesTableView.reloadData()
        self.detailsAbilityTableView.reloadData()
        
        self.detailsImage.sd_setImage(with: controller.urlPokemonImage, completed: nil)
        self.detailsLabel.text = controller.labelPokemonDetails
    }

    func setRequest(){
        controller.requestDetails(url: controller.urlDetails) { [weak self] sucess in
            if sucess {
                self?.setupUI()
            }
        }
    }
}
