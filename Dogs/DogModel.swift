//
//  DogModel.swift
//  Dogs
//
//  Created by Brian Vo on 2018-04-29.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

import UIKit

class DogModel: NSObject {
    let farmId: Int
    let serverId: Int
    let id: Int
    let secret: String
    let url: String
    
    init(dictionary: NSDictionary) {
        farmId = dictionary["farm"] as! Int
        serverId = dictionary["server"] as! Int
        id = dictionary["id"] as! Int
        secret = dictionary["secret"] as! String
        url = "https://farm\(farmId).staticflickr.com/\(serverId)/\(id)_\(secret).jpg"
    }
    
}
