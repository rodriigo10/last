//
//  LoginPokemonViewController.swift
//  PokemonList2
//
//  Created by Rodrigo Garcia on 05/04/22.
//

import UIKit
import Alamofire

class LoginPokemonViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //    user: user@xds.com.br
        //    pass: 223344
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    } //usando a barra de status deixando em branco.
    
    @IBAction func btnLogin(_ sender: Any) {
        let email = emailTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        
        let param = ["email":email, "password":password]
        
        AF.request("https://p3teufi0k9.execute-api.us-east-1.amazonaws.com/v1/signin", method:          .post, parameters: param, encoder: JSONParameterEncoder.default).responseJSON { [weak self]        response in
            if response.response?.statusCode == 200 {
                
                var pokemonList = self?.storyboard?.instantiateViewController(withIdentifier: "pokemonList")
                pokemonList?.modalPresentationStyle = .fullScreen
                self?.present(pokemonList ?? UIViewController(), animated: true, completion: nil)
                
                var preferredStatusBarStyle: UIStatusBarStyle {
                    return .darkContent
                } //usando a barra de status deixando em dark novamente.
            }else {
                self?.showAlert()
            }
        }
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "erro", message: "a message error", preferredStyle: .alert)
        
        let okayAlert = UIAlertAction(title: "Ok", style: .default, handler: nil)
        let cancelAlert = UIAlertAction(title: "cancel", style: .default, handler: nil)
        
        alert.addAction(okayAlert)
        alert.addAction(cancelAlert)
        
        present(alert, animated: true, completion: nil)
    }
}
