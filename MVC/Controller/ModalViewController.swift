//
//  ModalViewController.swift
//  MVC
//
//  Created by UNAM on 06/08/25.
//

import UIKit

class ModalViewController: UIViewController {
    var pokemon_recibido = Pokemon(image_id: nil, name: nil, movement: nil, skill: nil)
    
    @IBOutlet weak var pokemonNameLabel: UILabel!
    
    @IBOutlet weak var pokemonImageView: UIImageView!
    
    @IBOutlet weak var pokemonMovementLabel: UILabel!
    
    @IBOutlet weak var pokemonSkillLabel: UILabel!
    
    @IBAction func buttonTappedModal(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "PokemonListSegue", sender: self)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Pokemon recibido: \(pokemon_recibido)")
        
        pokemonNameLabel.text = pokemon_recibido.name
        
        if let imageId = pokemon_recibido.image_id {
            pokemonImageView.image = UIImage(named: String(describing: imageId))
        }else{
            pokemonImageView.image = UIImage(named: "default_image")
        }
        
        pokemonMovementLabel.text = pokemon_recibido.movement
        
        pokemonSkillLabel.text = pokemon_recibido.skill
    }
    
        
        override func viewWillAppear(_ animated: Bool){
            
            super.viewWillAppear(animated)
            
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
