//
//  PokemonTableViewCell.swift
//  MVC
//
//  Created by UNAM on 01/08/25.
//

import UIKit

class PokemonTableViewCell: UITableViewCell {

    @IBOutlet weak var PokemonLabel: UILabel!
    @IBOutlet weak var PokemonImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
