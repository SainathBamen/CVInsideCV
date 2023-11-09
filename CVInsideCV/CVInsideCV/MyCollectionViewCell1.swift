//
//  MyCollectionViewCell1.swift
//  CVInsideCV
//
//  Created by mac on 10/27/23.
//

import UIKit

class MyCollectionViewCell1: UICollectionViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return eData[myCollectionView.tag].imageGallery.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell2
        cell.myImg.image = UIImage(named: eData[myCollectionView.tag].imageGallery[indexPath.row])
        return cell
    }
    
    //collectionView.
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
    }
    
}
