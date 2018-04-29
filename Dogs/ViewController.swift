//
//  ViewController.swift
//  Dogs
//
//  Created by Brian Vo on 2018-04-29.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource  {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let dataManager = DataManager.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        dataManager.getDogs {
            //self.collectionView.reloadSections(IndexSet(integer: 0))
            self.collectionView.reloadData()
        }
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print(dataManager.dogArray.count)
        return dataManager.dogArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "dogCellId", for: indexPath) as! DogCell;
        
//        cell.imageView.image = dataManager.dogArray[indexPath.row].image
//        cell.dogLabel.text = dataManager.dogArray[indexPath.row].title
        cell.displayContent(image: dataManager.dogArray[indexPath.row].image, title: dataManager.dogArray[indexPath.row].title)
        
        return cell;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

