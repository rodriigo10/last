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
        AF.request("https://sky-frontend.herokuapp.com/movies", method: .get).responseJSON { responseRequest in
            if let responseRequestChecker = responseRequest.data {
                let movies = try? JSONDecoder().decode(Movies.self, from: responseRequestChecker)
                self.minhasMovies = movies
                self.mainTableView.reloadData()
            }
        }
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //        let tapped = self.storyboard?.instantiateViewController(withIdentifier: "titleSelected")
        //        if let selectTapped = tapped {
        //            self.present(selectTapped, animated: true, completion: nil)
        //        }
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return minhasMovies?.contents?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TitleFilmsTableViewCell
        cell?.setConfigCell(object: minhasMovies?.contents?[indexPath.row])
        return cell ?? UITableViewCell()
    }
}

