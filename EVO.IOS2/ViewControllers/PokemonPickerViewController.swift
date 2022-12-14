//
//  PokemonPickerViewController.swift
//  EVO.IOS2
//
//  Created by Plancquet Frederic on 23/08/2022.
//

import UIKit
import SafariServices

class PokemonPickerViewController: UIViewController {
    @IBOutlet var pokemonPicker: UIPickerView!
    @IBOutlet var myImage: UIImageView!
    @IBOutlet var backGroundImage: UIView!
    @IBOutlet var moreInfoButt: UIButton!
    
    struct ColorModel {
        var name: String
        var color: UIColor
    }
    var colors = [ColorModel]()
    var pokemonList = ["Dragmara","Marcacrin","Blizzeval","Dracaufeu","Poussifeu","Salamèche","Otaquin","Nénupiot","Magicarpe","Scalpion","Fermite","Galekid" ]





    override func viewDidLoad() {
        super.viewDidLoad()
        initColor()
        pokemonPicker.dataSource = self
        pokemonPicker.delegate = self
        myImage.image = UIImage(named: pokemonList[0])
        backGroundImage.backgroundColor = colors[0].color
        
    }
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            
            let bgColor = UIColor(named: "BGColor")

            // change nav bar appearance
            let appearance = UINavigationBarAppearance()
            appearance.backgroundColor = bgColor
            navigationController?.navigationBar.standardAppearance = appearance
            navigationController?.navigationBar.scrollEdgeAppearance = appearance
        }
    
    
    @IBAction func moreInfoAction(_ sender: Any) {
        if let url = URL(string: NSLocalizedString("pokemon_link", comment: "")) {
            let vc = SFSafariViewController(url: url)
            present(vc, animated: true)
        }
    }
    
    
    func initColor() {
        colors.append(ColorModel(name: NSLocalizedString("color_red", comment: ""), color: .red))
        colors.append(ColorModel(name: NSLocalizedString("color_blue", comment: ""), color: .blue))
        colors.append(ColorModel(name: NSLocalizedString("color_yellow", comment: ""), color: .yellow))
        colors.append(ColorModel(name: NSLocalizedString("color_green", comment: ""), color: .green))
        colors.append(ColorModel(name: NSLocalizedString("color_gray", comment: ""), color: .gray))
        colors.append(ColorModel(name: NSLocalizedString("color_white", comment: ""), color: .white))

    }
    

}

extension PokemonPickerViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0:
            return pokemonList.count
        case 1:
            return colors.count
        default:
            return 0
            
        }

    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component {
        case 0:
            return pokemonList[row]
        case 1:
            return colors[row].name
        default:
            return "salut"
    
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch component {
        case 0:
            myImage.image = UIImage(named: pokemonList[row])
        case 1:
            backGroundImage.backgroundColor = colors[row].color
        default:
            "salut"
            }
    }
}
