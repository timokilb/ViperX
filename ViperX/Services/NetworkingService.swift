//
//  NetworkingService.swift
//  ViperX
//
//  Created by Neo on 26.03.20.
//  Copyright © 2020 Neo. All rights reserved.
//

import Foundation
import Alamofire

let url = "https://jsonplaceholder.typicode.com/todos/1"


class NetworkingService{
    
    static func execute() {
        AF.request("https://httpbin.org/get").response { (response) in
            debugPrint(response)
        }
    }
}
