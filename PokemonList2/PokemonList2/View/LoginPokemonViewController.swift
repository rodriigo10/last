
import UIKit
import Alamofire

class LoginPokemonViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let controller = LoginPokemonController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    } //usando a barra de status deixando em branco.
    
    @IBAction func btnLogin(_ sender: Any) {
        
        let email = emailTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        let param = ["email":email, "password":password]
        
        controller.requestLogin(param: param) { [weak self] sucess in
            if sucess{
                let pokemonList = self?.storyboard?.instantiateViewController(withIdentifier: self?.controller.identifierScreen ?? "")
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
        let alert = UIAlertController(title: controller.alertTitle, message: controller.alertmessage, preferredStyle: .alert)
        
        let okayAlert = UIAlertAction(title: controller.alertOkAction, style: .default, handler: nil)
        let cancelAlert = UIAlertAction(title: controller.alertCancelAction, style: .default, handler: nil)
        
        alert.addAction(okayAlert)
        alert.addAction(cancelAlert)
        
        present(alert, animated: true, completion: nil)
    }
}

//
//
//
//        AF.request(controller.urlId, method: .post, parameters: param, encoder: JSONParameterEncoder.default).responseJSON { [weak self] response in
//            if response.response?.statusCode == 200 {
//
//                let pokemonList = self?.storyboard?.instantiateViewController(withIdentifier: self?.controller.identifierScreen ?? "")
//                pokemonList?.modalPresentationStyle = .fullScreen
//                self?.present(pokemonList ?? UIViewController(), animated: true, completion: nil)
//
//                var preferredStatusBarStyle: UIStatusBarStyle {
//                    return .darkContent
//                } //usando a barra de status deixando em dark novamente.
//            }else {
//                self?.showAlert()
//            }
//        }
//    }
//
   
