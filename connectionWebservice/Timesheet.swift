//
//  Timesheet.swift
//  connectionWebservice
//
//  Created by Kemin Suenggittawisuthi on 29/6/61.
//  Copyright © พ.ศ. 2561 Kemin Suenggittawisuthi. All rights reserved.
//

import Foundation

struct Timesheet {
    
    let projectId:      String
    let totalhours:     Int
    let updatedDate:    String
    let createdDate:    String
    let timeOut:        String
//    let description:    String
    let date:           String
    let userId:         Int
    let createdUser:    Int
    let task:           String
    let updatedUser:    Int
    let id:             Int
    let timeIn:         String
    
    
    init?(json: JSON) {
        guard let date =        json["date"] as? String,
            let totalhours =        json["totalhours"] as? Int,
            let id =                json["id"] as? Int,
//            let description =       json["description"] as? String,
            let task =              json["task"] as? String,
            let userId =            json["userId"] as? Int,
            let projectId =         json["projectId"] as? String,
            let timeIn =            json["timeIn"] as? String,
            let timeOut =           json["timeOut"] as? String,
            let createdDate =       json["createdDate"] as? String,
            let updatedDate =       json["updatedDate"] as? String,
            let createdUser =       json["createdUser"] as? Int,
            let updatedUser =       json["updatedUser"] as? Int
            else { return nil }
        
        self.date =         date
        self.totalhours =   totalhours
        self.id =           id
//        self.description =  description
        self.task =         task
        self.userId =       userId
        self.projectId =    projectId
        self.timeIn =       timeIn
        self.timeOut =      timeOut
        self.createdDate =  createdDate
        self.updatedDate =  updatedDate
        self.createdUser =  createdUser
        self.updatedUser =  updatedUser
        
        
    }
    
}
