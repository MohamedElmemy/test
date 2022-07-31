//
//  imageViewCell.swift
//  002
//
//  Created by El-Memy on 26/07/2022.
//

import UIKit

class imageViewCell: UICollectionViewCell {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var Description: UILabel!
   
    
    
    func setupCell(photo : UIImage , Description : String){
        image.image = photo
//        Description.text = Description

    }
}
