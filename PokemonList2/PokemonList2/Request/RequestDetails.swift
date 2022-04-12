//
//  RequestDetails.swift
//  PokemonList2
//
//  Created by Rodrigo Garcia on 07/04/22.
//

import UIKit
import Alamofire

class RequestDetails: NSObject {
    
    func requestDetails(url: String, completion: @escaping (DetailsPokemon?, Bool) -> Void ){
        AF.request(url, method: .get).responseJSON { response in
            if response.response?.statusCode == 200 {
                
                do{
                    let detailsPokemon = try JSONDecoder().decode(DetailsPokemon.self, from: response.data ?? Data())
                    completion(detailsPokemon, true)
                } catch{
                    completion(nil, false)
                }
            }
        }
    }
}
