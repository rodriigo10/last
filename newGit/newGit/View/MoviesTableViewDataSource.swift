//
//  MoviesTableViewDataSource.swift
//  newGit
//
//  Created by Rodrigo Garcia on 28/02/22.
//

import UIKit

extension MoviesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return minhaMovies?.contents?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TitleFilmsTableViewCell
        cell?.setConfigCell(object: minhaMovies?.contents?[indexPath.row])
        return cell ?? UITableViewCell()
    }
}
