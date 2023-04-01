//
//  ViewController.swift
//  UIImageView
//
//  Created by 渡邊魁優 on 2023/04/01.
//

import UIKit
import Kingfisher

struct Pokemon: Encodable {
    let name: String
    let url: URL
}

class ViewController: UIViewController {
    let pokemons: [Pokemon] = [
        Pokemon(name: "フシギバナ", url: URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/3.png")!),
        Pokemon(name: "リザードン", url: URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/6.png")!),
        Pokemon(name: "カメックス", url: URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/9.png")!)
    ]

    @IBOutlet weak var pokemonImage: UIImageView!
    @IBOutlet weak var pokemonName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomChange()
    }

    @IBAction func changePokemon(_ sender: Any) {
        randomChange()
    }
    
    private func randomChange() {
        
        let index = Int.random(in: 0...2)
        pokemonName.text = pokemons[index].name
        pokemonImage.kf.setImage(with: pokemons[index].url)
//        if let imageData = try? Data(contentsOf: pokemons[index].url) {
//            pokemonImage.image = UIImage(data: imageData)
//        }
    }
}

