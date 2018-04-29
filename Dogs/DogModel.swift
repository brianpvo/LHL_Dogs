//
//  DogModel.swift
//  Dogs
//
//  Created by Brian Vo on 2018-04-29.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

import UIKit

class DogModel {
    let farmId: Int
    let serverId: String
    let id: String
    let secret: String
    let url: String
    
    init(dictionary: NSDictionary) {
        farmId = dictionary["farm"] as! Int
        serverId = (dictionary["server"] as? String)!
        id = (dictionary["id"] as? String)!
        secret = dictionary["secret"] as! String
        url = "https://farm\(farmId).staticflickr.com/\(serverId)/\(id)_\(secret).jpg"
        print(url)
    }
    
}
