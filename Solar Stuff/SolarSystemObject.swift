//
//  SolarSystemObject.swift
//  Solar Stuff
//
//  Created by Tomas Sanni on 8/4/22.
//

import Foundation

struct SolarSystemObject: Codable, Identifiable {
    var id: Int
    let name: String
    let type: String
    let summary: String
    let overview: String
    let lifePotential: String
    let sizeAndDistance: String
    let moon: Moon
    
    
    var image: String {
        "planet\(id)"
    }
    
    static let test = SolarSystemObject(id: 3, name: "Earth", type: "", summary: "", overview: "Earth—our home planet—is the only place we know of so far that’s inhabited by living things. It's also the only planet in our solar system with liquid water on the surface.", lifePotential: "We have plenty of life here", sizeAndDistance: "Big, round and somewhere in space", moon: Moon(moons: 10, moonNames: nil))
}


struct Moon: Codable {
    let moons: Int
    let moonNames: [String]?
}

