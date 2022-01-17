//
//  PlanetDetailViewController.swift
//  SolarSystems
//
//  Created by Carlotta Chen on 1/17/22.
//

import UIKit

class PlanetDetailViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
    }
    
    private func updateViews() {
        guard let planet = planet, isViewLoaded else { return }
        planetNameLabel.text = planet.planetName
        planetImageLabel.contentMode = .scaleAspectFit
        planetImageLabel.image = UIImage(named: planet.planetImageName)
        planetDiameterLabel.text = "Planet Diameter: \(planet.planetDiameter) KM"
        planetDayLengthLabel.text = "Maximum Distance From Sun: \(planet.planetDayLength) KM"
        maxMillionLabel.text = "Day Length in Earth Days: \(planet.maxMillionKMsFromSun) Days"
        
    }
    
    var planet: Planet? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet weak var planetNameLabel: UILabel!
    @IBOutlet weak var planetImageLabel: UIImageView!
    @IBOutlet weak var planetDiameterLabel: UILabel!
    @IBOutlet weak var planetDayLengthLabel: UILabel!
    @IBOutlet weak var maxMillionLabel: UILabel!
    
    
}
