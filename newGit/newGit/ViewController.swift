//
//  ViewController.swift
//  newGit
//
//  Created by Rodrigo Garcia on 22/02/22.
//

import UIKit
import Alamofire


class ViewController: UIViewController {

    
    var minhasMovies: Movies?
    
    @IBOutlet weak var mainTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setConfig()
        setRequest()
    }

    
    func setConfig () {
        
        mainTableView.delegate = self
        mainTableView.dataSource = self
        
    }

    func setRequest () {
        AF.request("https://sky-frontend.herokuapp.com/movies/", method: .get).responseJSON { responseData in
            
            let movies = try? JSONDecoder().decode(Movies.self, from: responseData ?? Data())
            self.minhasMovies = movies
        }
    }
    
}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

