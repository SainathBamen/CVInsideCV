//
//  ViewController.swift
//  CVInsideCV
//
//  Created by mac on 10/27/23.
//

import UIKit
var eData = [
    EntertainmentApp(sectionType: "A", imageGallery: ["maharaj","maharaj","maharaj","maharaj","maharaj"]),
    EntertainmentApp(sectionType: "B", imageGallery: ["maharaj","maharaj","maharaj","maharaj","maharaj"]),
    EntertainmentApp(sectionType: "C", imageGallery: ["maharaj","maharaj","maharaj","maharaj","maharaj"]),
    EntertainmentApp(sectionType: "D", imageGallery: ["maharaj","maharaj","maharaj","maharaj","maharaj"])
]

class ViewController: UIViewController {

    @IBOutlet weak var myTableView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myTableView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell1
        cell.myCollectionView.tag = indexPath.section
        return cell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return eData.count
    }
    



    
    
    
    
}

