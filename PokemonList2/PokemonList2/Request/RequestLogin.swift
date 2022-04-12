//
//  RequestLogin.swift
//  PokemonList2
//
//  Created by Rodrigo Garcia on 12/04/22.
//

import UIKit
import Alamofire

class RequestLogin: NSObject {
    
    var urlId: String {
        return "https://p3teufi0k9.execute-api.us-east-1.amazonaws.com/v1/signin"
    }
    
    func requestLogin(param:[String: String], completion: @escaping (Bool) -> Void ){
        AF.request(urlId, method: .post, parameters: param, encoder: JSONParameterEncoder.default).responseJSON { response in
            if response.response?.statusCode == 200 {
                completion(true)
            } else{
                completion(false)
            }
        }
    }
}
