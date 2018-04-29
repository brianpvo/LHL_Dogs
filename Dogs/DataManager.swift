//
//  DataManager.swift
//  Dogs
//
//  Created by Brian Vo on 2018-04-29.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

import UIKit

final class DataManager: NSObject {
    
    static let sharedInstance = DataManager()
    
    var dogArray: [DogModel] = []
    
    func getDogs(completion: @escaping () -> Void) {
        
//        NetworkManager.getFlickrAPI { (json) in
//            <#code#>
//        }
    }

}
