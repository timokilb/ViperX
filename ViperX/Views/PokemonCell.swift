//
//  FoodCell.swift
//  ViperX
//
//  Created by Neo on 25.03.20.
//  Copyright © 2020 Neo. All rights reserved.
//

import UIKit

class PokemonCell: UITableViewCell {
    
    var pokemonName = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(pokemonName)
        configurePokemonName()
        setPokemonNameConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(pokemon: Pokemon){
        pokemonName.text = pokemon.name
    }
    
    
    func configurePokemonName() {
        pokemonName.textColor = .systemRed
        pokemonName.textAlignment = .center
    }
    
    func setPokemonNameConstraints() {
        pokemonName.translatesAutoresizingMaskIntoConstraints = false
        pokemonName.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        pokemonName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        pokemonName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        pokemonName.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
}
