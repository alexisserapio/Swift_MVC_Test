//
//  PokemonViewController.swift
//  MVC
//
//  Created by Alexis Serapio on 01/08/25.
//

import UIKit

class PokemonViewController: UIViewController {
    
    @IBOutlet weak var TableView: UITableView!
    
    let DataManager = PokemonDataManager()
    var pokemon_enviado: [Pokemon] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(named: "BackgroundColor")
        

        DataManager.fetchPokemon()
        
        //print("# de Pokemones : ", DataManager.count())
        print("# de Pokemones : \(DataManager.count())")

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

//Extensiones (Extensiones usando protocolos) preguntar

extension PokemonViewController: UITableViewDataSource, UITableViewDelegate{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataManager.count()
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Lista de Pokemones"
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexpath: IndexPath) -> CGFloat {
//        return 100
//    }
//    
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let imageView = UIImageView(image: UIImage(named: "Pokemon"))
//        return imageView
//    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
            // Crear una vista personalizada para el encabezado
            let headerView = UIView()
            
            // Establecer el color de fondo de la cabecera (puedes usar un color dinámico)
            headerView.backgroundColor = UIColor(named: "BackgroundColor")
            
            // Crear el título (UILabel)
            let titleLabel = UILabel()
            titleLabel.text = "Lista de Pokemones" // Título de la sección
            titleLabel.font = UIFont.boldSystemFont(ofSize: 20)
            titleLabel.translatesAutoresizingMaskIntoConstraints = false
            
            // Añadir el UILabel a la vista de cabecera
            headerView.addSubview(titleLabel)
                        
            return headerView
        }
    func tableView(_ tableView: UITableView, cellForRowAt indexpath: IndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for:indexpath) as! PokemonTableViewCell
        
        let pokemon = DataManager.getPokemon(at: indexpath.row)
        cell.PokemonLabel.text = pokemon.name
        
        if let imageId = pokemon.image_id {
            cell.PokemonImage.image = UIImage(named: String(describing: imageId))  // "image_3" si image_id es 3
        } else {
            cell.PokemonImage.image = UIImage(named: "default_image")  // Imagen por defecto si image_id es nil
        }
// Forzando el desempaquetado, no es buena practica
//        cell.PokemonImage.image = UIImage(named: String(describing: pokemon.image_id!))
        
       
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "PokemonSegue", sender: indexPath)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        let destinationViewController = segue.destination as! ModalViewController
        
        if let indexpath = sender as? IndexPath{
            
            destinationViewController.pokemon_recibido = self.DataManager.getPokemon(at: indexpath.row)
        }
            
    }
}


