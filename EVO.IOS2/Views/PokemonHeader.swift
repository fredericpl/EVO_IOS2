//
//  PokemonHeader.swift
//  EVO.IOS2
//
//  Created by Plancquet Frederic on 24/08/2022.
//

import UIKit

class PokemonHeader: UITableViewHeaderFooterView {
    
    @IBOutlet var typeLb: UILabel!
    @IBOutlet var backgroundColorView: UIView!
    
    func setup(type: PokemonType, nbPokemon: Int) {
        
        typeLb.text = type.title.uppercased(with: .current) +  " (" + String(nbPokemon) + ")"
        backgroundColorView.backgroundColor = type.color
    }


}

