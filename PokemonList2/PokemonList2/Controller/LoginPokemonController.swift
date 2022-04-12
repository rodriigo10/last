//
//  LoginPokemonController.swift
//  PokemonList2
//
//  Created by Rodrigo Garcia on 05/04/22.
//

import UIKit

class LoginPokemonController: NSObject {

    let request = RequestLogin()
    
    var urlId: String {
        return "https://p3teufi0k9.execute-api.us-east-1.amazonaws.com/v1/signin"
    }
    
    var identifierScreen: String {
        return "pokemonList"
    }
    
    var alertTitle: String {
        return "erro"
    }
    
    var alertmessage: String {
        return "a message error"
    }
    
    var alertOkAction: String {
        return "Ok"
    }
    
    var alertCancelAction: String {
        return "Cancel"
    }
    
    func requestLogin(param:[String: String], completion: @escaping (Bool) -> Void){
        request.requestLogin(param: param) { sucess in
        }
    }
}
