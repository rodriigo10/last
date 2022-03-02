//
//  MoviesTableViewDelegate.swift
//  newGit
//
//  Created by Rodrigo Garcia on 28/02/22.
//

import UIKit

extension MoviesViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let tapped = self.storyboard?.instantiateViewController(withIdentifier: "titleSelected") as? TitleSelectedViewController
        if let selectTapped = tapped {
            selectTapped.modalPresentationStyle = .fullScreen
            selectTapped.configFilm = minhaMovies?.contents?[indexPath.row]
            
            self.present(selectTapped, animated: true, completion: nil)
        }
    }
}
