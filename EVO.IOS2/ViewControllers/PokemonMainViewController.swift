//
//  PokemonMainViewController.swift
//  EVO.IOS2
//
//  Created by Plancquet Frederic on 23/08/2022.
//

import UIKit

class PokemonMainViewController: UIViewController {
    
    @IBOutlet var pokemonTableView: UITableView!
 
    var pokemonList: [PokemonList] = [PokemonList]()



    override func viewDidLoad() {
        super.viewDidLoad()
        initPokemon()
        
        
        pokemonTableView.dataSource = self
        pokemonTableView.delegate = self
        pokemonTableView.register(UINib(nibName: "PokemonCell", bundle: nil), forCellReuseIdentifier: "PokemonCell")
        

        
    }
    func initPokemon() {
        pokemonList.append(PokemonList(pokemons: [ Pokemon(name: "Dragmara", taille: 50,pokedexNb: 1234, type: "ice"), Pokemon(name: "Marcacrin", taille: 55,pokedexNb: 1343, type: "ice"),Pokemon(name: "Blizzeval", taille: 43,pokedexNb: 1235, type: "ice") ], type: PokemonType.ice))
        pokemonList.append(PokemonList(pokemons: [ Pokemon(name: "Dracaufeu", taille: 55,pokedexNb: 302, type: "fire"), Pokemon(name: "Poussifeu", taille: 23,pokedexNb: 234, type: "fire"), Pokemon(name: "Salamèche", taille: 67,pokedexNb: 345, type: "fire")], type: PokemonType.fire))
        pokemonList.append(PokemonList(pokemons: [ Pokemon(name: "Otaquin", taille: 34,pokedexNb: 4356, type: "water"), Pokemon(name: "Nénupiot", taille: 34,pokedexNb: 1345, type: "water"),Pokemon(name: "Magicarpe", taille: 55,pokedexNb: 355, type: "water") ], type: PokemonType.water))
        pokemonList.append(PokemonList(pokemons: [ Pokemon(name: "Scalpion", taille: 36,pokedexNb: 654, type: "steel"), Pokemon(name: "Fermite", taille: 35,pokedexNb: 987, type: "steel"),Pokemon(name: "Galekid", taille: 60,pokedexNb: 853, type: "steel") ], type: PokemonType.steel))
     
    }



}

extension PokemonMainViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        pokemonList.count
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        pokemonList[section].pokemons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PokemonCell", for: indexPath) as! PokemonCell
        let pokemon = pokemonList[indexPath.section].pokemons[indexPath.row].name

        cell.pokeName.text = pokemon
        cell.pokeImg.image = UIImage(named: pokemon)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = storyboard!.instantiateViewController(withIdentifier: "PokemonDetailViewController") as! PokemonDetailViewController
        detailVC.modalPresentationStyle = .popover
        
        self.present(detailVC, animated: true)
        let pokemon = pokemonList[indexPath.section].pokemons[indexPath.row]
        detailVC.pokeName.text = pokemon.name
        detailVC.pokeImg.image =  UIImage(named: pokemon.name)
        detailVC.pokeGen.text = "Gen : 1"
        detailVC.pokeType.text = "types: " + pokemon.type
        detailVC.pokedex.text = "# " + String(pokemon.pokedexNb)
        detailVC.pokeHeight.text = "height " + String(pokemon.taille) + "cm"
    }
    
    
}
