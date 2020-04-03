//
//  FoodCell.swift
//  ViperX
//
//  Created by Neo on 25.03.20.
//  Copyright © 2020 Neo. All rights reserved.
//

import UIKit

class FoodCell: UITableViewCell {
    
    var foodLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(foodLabel)
        configureFoodLabel()
        setFoodLabelConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(food: Food){
        foodLabel.text = food.name
    }
    
    
    func configureFoodLabel() {
        foodLabel.textColor = .systemRed
        foodLabel.textAlignment = .center
    }
    
    func setFoodLabelConstraints() {
        foodLabel.translatesAutoresizingMaskIntoConstraints = false
        foodLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        foodLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        foodLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        foodLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
}
