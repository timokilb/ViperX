//
//  NetworkingService.swift
//  ViperX
//
//  Created by Neo on 26.03.20.
//  Copyright © 2020 Neo. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

let url = "https://jsonplaceholder.typicode.com/todos/1"


class NetworkingService{
    
    static func execute(from endpoint: String) {
        AF.request(endpoint).responseJSON { (response) in
            let pokemonJSON: JSON = JSON(response.value)
            var pokemon = Pokemon(id: pokemonJSON["id"].stringValue, name: pokemonJSON["name"].stringValue)
            debugPrint(pokemon)
        }
    }
}
