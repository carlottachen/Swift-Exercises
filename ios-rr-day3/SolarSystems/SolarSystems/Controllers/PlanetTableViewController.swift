//
//  PlanetTableViewController.swift
//  SolarSystems
//
//  Created by Carlotta Chen on 1/13/22.
//

import UIKit

class PlanetTableViewController: UITableViewController {

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return PlanetController.planets.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlanetCell", for: indexPath)
        let planet = PlanetController.planets[indexPath.row]
        
        let image : UIImage? = UIImage(named: planet.planetImageName)
        cell.imageView?.image = image
        
        cell.textLabel?.text = planet.planetName
        cell.detailTextLabel?.text = "Planet " + String(indexPath.row + 1)
        
        return cell
    }
    
    
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tappedIndexPath = tableView.indexPathForSelectedRow else { return }
        let planet = PlanetController.planets[tappedIndexPath.row]
        if let detailVC = segue.destination as? PlanetDetailViewController {
            detailVC.planet = planet
        }
        
    }
    
}
