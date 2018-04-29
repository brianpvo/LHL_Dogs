//
//  NetworkManager.swift
//  Dogs
//
//  Created by Brian Vo on 2018-04-29.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

import UIKit

class NetworkManager: NSObject {
    
    static func getFlickrAPI(completion: @escaping (NSArray?) -> Void) {
        let url = URL(string: "https://api.flickr.com/services/rest/?method=flickr.photos.search&format=json&nojsoncallback=1&api_key=53fbe5403f875ec142bd4cff9e44215a&tags=dog");
        
        let urlRequest = URLRequest.init(url: url!)
        
        let configuration = URLSessionConfiguration.default
        let session = URLSession(configuration: configuration)
        let dataTask = session.dataTask(with: urlRequest) { (data, response, error) in
            guard let unwrappedData = data else { print("Error unwrapping data"); return }
            
            do {
                guard let responseJSON = try JSONSerialization.jsonObject(with: unwrappedData, options: []) as? NSDictionary else { return }
                parseJSON(JSON: responseJSON)
                //completion(responseJSON)
            } catch {
                print("Could not get data. \(error), \(error.localizedDescription)")
            }
        }
        dataTask.resume()
    }
    
    static func parseJSON(JSON: NSDictionary) -> NSArray {
        var dogsArray: [DogModel] = []
        
        let photosDict = JSON["photos"] as! NSDictionary
        let photosArray = photosDict["photo"] as! NSArray
        for dogDict in photosArray {
            let dog: DogModel = DogModel.Dog.init(dictionary: dogDict as! NSDictionary)
            dogsArray.append(dog)
        }
//        if let photosArray = photosDict?["photo"] as? [NSArray] {
//            print(photosArray)
    
//        }
        
    }
    
}
