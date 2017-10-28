//
//  ItemCellTableViewCell.swift
//  FishX
//
//  Created by fang tairan on 2017/10/29.
//  Copyright © 2017年 Tayron. All rights reserved.
//

import UIKit
import SDWebImage

class ItemCell: UITableViewCell {
    
    
    @IBOutlet weak var imageViewIcon: UIImageView!
    
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelDetail: UILabel!
    @IBOutlet weak var rating: UIView!
    
    func configureWithItem(item:Item){
        imageViewIcon.sd_setImage(with: NSURL(string: item.image) as! URL, completed: nil)
        labelTitle.text = item.title
        
        var detail = ""
        
        for str in item.author {
            detail += (str + "/")
        }
        
        labelDetail.text = detail + item.publisher + "/" + item.pubdate
        
        
    }
    
}
