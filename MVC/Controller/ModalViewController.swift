//
//  ModalViewController.swift
//  MVC
//
//  Created by UNAM on 06/08/25.
//

import UIKit

class ModalViewController: UIViewController {
   var mensaje_recibido = ""
    

    @IBOutlet weak var pokemonInfoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        print("Mensaje recibido: \(mensaje_recibido)")
            
            pokemonInfoLabel.text = mensaje_recibido
            // Do any additional setup after loading the view.
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
