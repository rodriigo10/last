//
//  ViewController.swift
//  newGit
//
//  Created by Rodrigo Garcia on 22/02/22.
//

import UIKit
import Alamofire


class MoviesViewController: UIViewController {
    
    var minhaMovies: Movies?
    var getRequest = Request()
    
    @IBOutlet weak var mainTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainTableView.dataSource = self
        mainTableView.delegate = self
        
        // ideia de repetir varias vezes é o costume e entendimento utilizar um closure, que nesse caso ta sendo passado parametros para o mesmo, conforme no arquivo da request, ele pede um completion, que no caso podemos dizer o tipo dele e outras informações, como um booleano. quando utilizamos ele, a IDE mostra o tipo que pede e nos (admin) daremos o nome para o mesmo.
            
        getRequest.request { (meuMovie, success) in
            if success {
                self.minhaMovies = meuMovie
                self.mainTableView.reloadData()
            }else {
                //wait a Code
            }
        }
    }
}
