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
    let urlString: String
    var image: UIImage
    let url: URL
    let title: String
    
    init(dictionary: NSDictionary) {
        //print(dictionary)
        farmId = dictionary["farm"] as! Int
        serverId = (dictionary["server"] as? String)!
        id = (dictionary["id"] as? String)!
        secret = dictionary["secret"] as! String
        urlString = "https://farm\(farmId).staticflickr.com/\(serverId)/\(id)_\(secret).jpg"
        url = URL(string: urlString)!
        image = UIImage(data:try! Data(contentsOf: url))!
        title = dictionary["title"] as! String
    }
    
}
