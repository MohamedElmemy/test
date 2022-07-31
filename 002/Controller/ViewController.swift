//
//  ViewController.swift
//  002
//
//  Created by El-Memy on 26/07/2022.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    var arrOfImage = [images]()
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
        
        
        arrOfImage.append(images(photo: UIImage(named: "image1")!, Description: "image1"))
        arrOfImage.append(images(photo: UIImage(named: "image2")!, Description: "image2"))
        arrOfImage.append(images(photo: UIImage(named: "image3")!, Description: "image3"))
        arrOfImage.append(images(photo: UIImage(named: "image4")!, Description: "image4"))
        arrOfImage.append(images(photo: UIImage(named: "image5")!, Description: "image5"))
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       
        return arrOfImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageCell", for: indexPath) as! imageViewCell
        let pics = arrOfImage[indexPath.row]
        cell.setupCell(photo: pics.photo, Description: "")
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0 
    }
    


}



