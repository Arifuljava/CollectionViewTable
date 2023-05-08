//
//  ViewController.swift
//  CollectionViewTable
//
//  Created by sang on 17/10/1444 AH.
//

import UIKit

var itemArr = Array<String>()

class ViewController: UIViewController {

    @IBOutlet weak var lil: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lil.delegate = self
        lil.dataSource = self
        
        for i in 1...60{
                    itemArr.append(i.description)
                }
        
    }


}



extension ViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        lil.deselectItem(at: indexPath, animated: true)
        print("uii")
    }
    
    
}
extension ViewController : UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1;
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
           return itemArr.count
       }
         
       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
           let cell = lil.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
             
           cell.
           
             
           return cell
       }
    
    
}

