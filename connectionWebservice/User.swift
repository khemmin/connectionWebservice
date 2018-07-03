//
//  User.swift
//  connectionWebservice
//
//  Created by Kemin Suenggittawisuthi on 28/6/61.
//  Copyright © พ.ศ. 2561 Kemin Suenggittawisuthi. All rights reserved.
//

import Foundation

struct User {
    
    let id:         Int
    let token:      String
    let username:   String
    
    init?(json: JSON) {
        guard let id =          json["id"] as? Int,
            let token =         json["token"] as? String,
            let username =      json["username"] as? String
            else { return nil }
        
        self.id =           id
        self.token =        token
        self.username =     username
    }
    
    func homeworld(_ completion: @escaping (String) -> Void) {
        NetworkingService.shared.getPeople { (homeworld) in
            completion(homeworld)
        }
    }
    
}
