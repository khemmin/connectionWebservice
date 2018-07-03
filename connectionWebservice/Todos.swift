//
//  Todos.swift
//  connectionWebservice
//
//  Created by Kemin Suenggittawisuthi on 2/7/61.
//  Copyright © พ.ศ. 2561 Kemin Suenggittawisuthi. All rights reserved.
//

import Foundation

struct Todos {
    
    let userId:     Int
    let id:         Int
    let title:      String
    let completed:   Bool
    
    init?(json: JSON) {
        guard let userId =          json["userId"] as? Int,
            let id =          json["id"] as? Int,
            let title =         json["title"] as? String,
            let completed =      json["completed"] as? Bool
            else { return nil }
        
        self.userId =       userId
        self.id =           id
        self.title =        title
        self.completed =     completed
    }
    
    
}
