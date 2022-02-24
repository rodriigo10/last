//
//  TitleFilmsTableViewCell.swift
//  newGit
//
//  Created by Rodrigo Garcia on 23/02/22.
//

import UIKit
import SDWebImage

class TitleFilmsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageTitle: UIImageView!
    @IBOutlet weak var labelTitle: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setConfigCell (object: Content?) {
        
        let setImage = URL(string: object?.images?.first?.url ?? "")
        imageTitle.sd_setImage(with: setImage, completed: nil)
        labelTitle.text = object?.title ?? ""
        
    }
    
}
