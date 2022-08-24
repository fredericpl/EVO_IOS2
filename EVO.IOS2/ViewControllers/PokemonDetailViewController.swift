//
//  PokemonDetailViewController.swift
//  EVO.IOS2
//
//  Created by Plancquet Frederic on 23/08/2022.
//

import UIKit

class PokemonDetailViewController: UIViewController {
    
    @IBOutlet var pokeName: UILabel!
    @IBOutlet var pokeType: UILabel!
    @IBOutlet var pokeHeight: UILabel!
    @IBOutlet var pokedex: UILabel!
    @IBOutlet var pokeGen: UILabel!
    @IBOutlet var pokeImg: UIImageView!
    
    var pokemon: Pokemon? 


    override func viewDidLoad() {
        super.viewDidLoad()

        
        pokeName.text = pokemon!.name
        pokeImg.image =  UIImage(named: pokemon!.name)
        pokeGen.text = "Gen : 1"
        pokeType.text = "types: " + pokemon!.type
        pokedex.text = "# " + String(pokemon!.pokedexNb)
        pokeHeight.text = "height " + String(pokemon!.taille) + "cm"
    }
    

    
}
