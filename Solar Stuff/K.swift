//
//  K.swift
//  Solar Stuff
//
//  Created by Tomas Sanni on 8/6/22.
//

import Foundation
import SwiftUI

struct K {
//    let mercuryColor = Color(red: 0.498, green: 0.498, blue: 0.498)
//    let venusColor = Color(red: 0.704, green: 0.417, blue: 0.188)
//    let earthColor = Color(red: 0.287, green: 0.397, blue: 0.284)
//    let marsColor = Color(red: 0.67, green: 0.324, blue: 0.231)
//    let jupiterColor = Color(red: 0.708, green: 0.618, blue: 0.526)
//    let saturnColor = Color(red: 0.851, green: 0.776, blue: 0.675)
//    let uranusColor = Color(red: 0.556, green: 0.649, blue: 0.696)
//    let neptuneColor = Color(red: 0.234, green: 0.266, blue: 0.564)
//    let plutoColor = Color(red: 0.403, green: 0.303, blue: 0.224)
    
    static let earthColor = UIColor(red: 0.287, green: 0.397, blue: 0.284, alpha: 1)
    
    static let planetColors: [String: UIColor] = [
        "Sun": UIColor(red: 0.853, green: 0.419, blue: 0.139, alpha: 1),
        "Mercury": UIColor(red: 0.498, green: 0.498, blue: 0.498, alpha: 1),
        "Venus": UIColor(red: 0.704, green: 0.417, blue: 0.188, alpha: 1),
        "Earth": UIColor(red: 0.287, green: 0.397, blue: 0.284, alpha: 1),
        "Mars": UIColor(red: 0.88, green: 0.407, blue: 0.259, alpha: 1),
        "Jupiter": UIColor(red: 0.708, green: 0.618, blue: 0.526, alpha: 1),
        "Saturn": UIColor(red: 0.851, green: 0.776, blue: 0.675, alpha: 1),
        "Uranus": UIColor(red: 0.556, green: 0.649, blue: 0.696, alpha: 1),
        "Neptune": UIColor(red: 0.234, green: 0.266, blue: 0.564, alpha: 1),
        "Pluto": UIColor(red: 0.403, green: 0.303, blue: 0.224, alpha: 1)
        
    ]
}
