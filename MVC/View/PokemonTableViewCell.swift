//
//  PokemonTableViewCell.swift
//  MVC
//
//  Created by Alexis Serapio on 01/08/25.
//

import UIKit

class PokemonTableViewCell: UITableViewCell {

    @IBOutlet weak var PokemonLabel: UILabel!
    @IBOutlet weak var PokemonImage: UIImageView!
    
    override func awakeFromNib() {
        // Initialization code
        super.awakeFromNib()
        self.backgroundColor = UIColor(named: "CellColor")
        PokemonLabel.backgroundColor = UIColor(named: "CellColor")
        
 

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    

}
