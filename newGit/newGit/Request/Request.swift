//
//  Request.swift
//  newGit
//
//  Created by Rodrigo Garcia on 28/02/22.
//

import UIKit
import Alamofire

class Request: NSObject {
    
    var minhasMovies: Movies?

    func request (completion: @escaping () -> Void) {
        AF.request("https://sky-frontend.herokuapp.com/movies", method: .get).responseJSON { responseRequest in
            if let responseRequestChecker = responseRequest.data {
                let movies = try? JSONDecoder().decode(Movies.self, from: responseRequestChecker)
                self.minhasMovies = movies
                
                completion()
            }
        }
    }
    
}
