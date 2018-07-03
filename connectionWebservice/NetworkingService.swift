//
//  NetworkingService.swift
//  connectionWebservice
//
//  Created by Kemin Suenggittawisuthi on 29/6/61.
//  Copyright © พ.ศ. 2561 Kemin Suenggittawisuthi. All rights reserved.
//

import Foundation
import Alamofire

typealias JSON = [String: Any]

class NetworkingService {
    
    static let shared = NetworkingService()
    private init() {}
    
    let parameters: Parameters = [
        "username": "admin",
        "password": "password"
    ]
    
    func getPeople(completion: @escaping (String) -> Void) {
        Alamofire.request("http://localhost:3000/auth/login", method: .post, parameters: parameters).responseJSON { response in
            guard let json = response.result.value as? JSON,
                let name = json["token"] as? String
                else { print("NOPE"); return }
            print("GOT HERE")
            completion(name)
        }
    }
    
    func postPeople(completion: () -> Void) {

        let headers: HTTPHeaders = [
            "Authorization": "Basic eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTAwMDAsInVzZXJuYW1lIjoiYWRtaW4iLCJpYXQiOjE1Mjk5MjEwMDh9.mclLRq5QUzsadDQgoblpDVu_rWbDjKe-bMimYNHgC4w"
        ]
        
        Alamofire.request("http://localhost:3000/api/timesheets", headers: headers).responseJSON { response in
            guard let json = response.result.value as? JSON else { return }
            print(json)
        }
    }

}
