//
//  ViewController.swift
//  newGit
//
//  Created by Rodrigo Garcia on 22/02/22.
//

import UIKit
import Alamofire


class MoviesViewController: UIViewController {
    
    var getRequest = Request()
    
    @IBOutlet weak var mainTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainTableView.dataSource = self
        mainTableView.delegate = self
       
        getRequest.request {
            
            self.mainTableView.reloadData()
        }

    }
}
