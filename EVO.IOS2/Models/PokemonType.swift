//
//  PokemonClass.swift
//  EVO.IOS2
//
//  Created by Plancquet Frederic on 23/08/2022.
//

import Foundation
import UIKit


enum PokemonType {
    case fire
    case water
    case steel
    case ice
    case grass
    
    var title: String {
        switch self {
        case .fire:
            return "fire"
        case .water:
            return "water"
        case .steel:
            return "steel"
        case .ice:
            return "ice"
        case .grass:
            return "grass"
        }
    }
    
    var color: UIColor {
        switch self {
        case .fire:
            return .red
        case .water:
            return .blue
        case .steel:
            return .gray
        case .ice:
            return .cyan
        case .grass:
            return .green
        }
    }
}



