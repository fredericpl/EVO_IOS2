//
//  PokemonCell.swift
//  EVO.IOS2
//
//  Created by Plancquet Frederic on 23/08/2022.
//

import UIKit

class PokemonCell: UITableViewCell {
    
    @IBOutlet var pokeImg: UIImageView!
    @IBOutlet var pokeName: UILabel! 

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setup() {

        func setup(pokemon: Pokemon, color: UIColor) {
            pokeImg.image = UIImage(named: pokemon.name)
            pokeName.text = pokemon.name
            
        }
    }
    
}
