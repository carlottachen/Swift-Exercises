//
//  PlanetController.swift
//  SolarSystems
//
//  Created by Carlotta Chen on 1/13/22.
//

import Foundation

class PlanetController {
    static var planets: [Planet] {
        return [
            Planet(planetName: "Mercury", planetImageName: "mercury", planetDiameter: 4880, planetDayLength: 87.969, maxMillionKMsFromSun: 43.0),
            Planet(planetName: "Venus", planetImageName: "venus", planetDiameter: 12104, planetDayLength: 2802, maxMillionKMsFromSun: 108.2),
            Planet(planetName: "Earth", planetImageName: "earth", planetDiameter: 12756, planetDayLength: 24, maxMillionKMsFromSun: 149.6),
            Planet(planetName: "Mars", planetImageName: "mars", planetDiameter: 6792, planetDayLength: 24.7, maxMillionKMsFromSun: 227.9),
            Planet(planetName: "Jupiter", planetImageName: "jupiter", planetDiameter: 42984, planetDayLength: 9.9, maxMillionKMsFromSun: 778.6),
            Planet(planetName: "Saturn", planetImageName: "saturn", planetDiameter: 120536, planetDayLength: 10.7, maxMillionKMsFromSun: 1433.5),
            Planet(planetName: "Uranus", planetImageName: "uranus", planetDiameter: 51118, planetDayLength: 17.2, maxMillionKMsFromSun: 2872.5),
            Planet(planetName: "Neptune", planetImageName: "neptune", planetDiameter: 49528, planetDayLength: 16.1, maxMillionKMsFromSun: 4495.1),
            Planet(planetName: "Pluto", planetImageName: "pluto", planetDiameter: 2370, planetDayLength: 153.3, maxMillionKMsFromSun: 5906.4)
        ]
    }
}







