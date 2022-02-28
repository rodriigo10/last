//
//  TitleSelectedViewController.swift
//  newGit
//
//  Created by Rodrigo Garcia on 24/02/22.
//

import UIKit
import SDWebImage

class TitleSelectedViewController: UIViewController {

    
    @IBOutlet weak var imageSelectedScreen: UIImageView!
    @IBOutlet weak var labelSelectedScreen: UILabel!
    @IBOutlet weak var descriptionSelectedScreen: UILabel!
    
    var configFilm: Content?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        screenTitleSelected()
    }
    
    func screenTitleSelected (){
    
        let setImageTitle = URL(string: configFilm?.images?.first?.url ?? "")
        imageSelectedScreen.sd_setImage(with: setImageTitle, completed: nil)
        labelSelectedScreen.text = configFilm?.title ?? ""
        descriptionSelectedScreen.text = configFilm?.contentDescription ?? ""
        
    }
    @IBAction func backMainScreen(_ sender: Any) {
        dismiss(animated: true)
    }
    
}
