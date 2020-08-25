//
//  DetailPageViewController.swift
//  Pokédex
//
//  Created by Eric Bollar on 8/18/16.
//  Copyright © 2016 DMA. All rights reserved.
//

import UIKit

class DetailPageViewController: UIViewController {
    @IBOutlet var detailText: UILabel!
    
    var pokemon = ""
    var pokemonList : [Pokemon] = []
    var pokemonColor = ""
    var loop = false
    
    @IBAction func prevButton(_ sender: AnyObject) {
        var k = 0
        loop = true
        while (k < pokemonList.count && loop == true){
            if (pokemonList[k].name == pokemon) {
                loop = false
                k -= 1
                if !(k == -1) {
                    pokemon = pokemonList[k].name
                    pokemonColor = pokemonList[k].color
                    reset()
                }else {
                    k = 150
                    pokemon = pokemonList[k].name
                    pokemonColor = pokemonList[k].color
                    reset()
                }
            }else {
                k += 1
            }
        }
        reset()
    }
    @IBAction func nextButton(_ sender: AnyObject) {
        var k = 0
        loop = true
        while (k < pokemonList.count && loop == true){
            if (pokemonList[k].name == pokemon) {
                loop = false
                k += 1
                if !(k == pokemonList.count) {
                    pokemon = pokemonList[k].name
                    pokemonColor = pokemonList[k].color
                    reset()
                }else {
                    k = 0
                    pokemon = pokemonList[k].name
                    pokemonColor = pokemonList[k].color
                    reset()
                }
            }else {
                k += 1
            }
        }
        reset()
    }

    @IBOutlet var pokemonImageView: UIImageView!
    @IBOutlet var pokemonNameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        reset()
    }
    
    func reset() {
        var pokemonImage = ""
        pokemonNameLabel.text = pokemon
        pokemonImage = pokemon.lowercased()
        pokemonImageView.image = UIImage (named: pokemonImage)
        var pokeDesc = ""
        var i = 0
        while (i < pokemonList.count) {
            if (pokemon == pokemonList[i].name) {
                pokeDesc = pokemonList[i].detail
            }
            i += 1
        }
        detailText.text = pokeDesc
        checkColor()
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func checkColor() {
        if (pokemonColor == "gray") {
            self.view.backgroundColor = UIColor.gray
        }else if (pokemonColor == "purple") {
            self.view.backgroundColor = UIColor.purple
        }else if (pokemonColor == "green") {
            self.view.backgroundColor = UIColor.green
        }else if (pokemonColor == "pink") {
            self.view.backgroundColor = UIColor.purple
        }else if (pokemonColor == "brown") {
            self.view.backgroundColor = UIColor.brown
        }else if (pokemonColor == "blue") {
            self.view.backgroundColor = UIColor.blue
        }else if (pokemonColor == "red") {
            self.view.backgroundColor = UIColor.red
        }else if (pokemonColor == "yellow") {
            self.view.backgroundColor = UIColor.yellow
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
