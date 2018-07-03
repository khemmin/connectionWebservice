//
//  connectingWeb.swift
//  connectionWebservice
//
//  Created by Kemin Suenggittawisuthi on 29/6/61.
//  Copyright © พ.ศ. 2561 Kemin Suenggittawisuthi. All rights reserved.
//

import Foundation
import Alamofire


class connectingWeb {
    
    static let shared = connectingWeb()
    private init() {}
    
    func getPeople(success successBlock: @escaping (GetPeopleResponse) -> Void) {
        
        
        Alamofire.request("https://jsonplaceholder.typicode.com/todos").responseJSON { response in
//            guard let json = response.result.value as? [JSON] else { return }
//            let name = json.map{ Todos(json: $0) }.flatMap{ $0 }
////            print(name)
//            self.todo = name
            
            do {
                let getPeopleResponse = try GetPeopleResponse(json: response.result.value)
                successBlock(getPeopleResponse)
            } catch {}
            
        }
    }
    
    func postPeople(success successBlock: @escaping (GetPeopleResponse) -> Void) {
        print("Bearer \(arai!)")
        let headers: HTTPHeaders = [
            "Authorization": "Bearer \(arai!)"
        ]
        
        Alamofire.request("http://localhost:3000/api/timesheets?year=2018&month=6&userId=10000", headers: headers).responseJSON { response in
            do {
                let json = response.result.value
//                print(json!)
                let getPeopleResponse = try GetPeopleResponse(json: json!)
                print(getPeopleResponse)
                successBlock(getPeopleResponse)
            } catch {}
        }
    }
    
}
