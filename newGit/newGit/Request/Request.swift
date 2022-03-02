//
//  Request.swift
//  newGit
//
//  Created by Rodrigo Garcia on 28/02/22.
//

import UIKit
import Alamofire

class Request: NSObject {
    
    func request (completion: @escaping(Movies?, Bool) -> Void) {
        
        AF.request("https://sky-frontend.herokuapp.com/movies", method: .get).responseJSON { response in
            if let responseChecker = response.data {
            let movies = try? JSONDecoder().decode(Movies.self, from: responseChecker)
                completion(movies, true)
            }else{
                completion(nil, false)
            }
        }
    }
}
