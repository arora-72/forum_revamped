//
//  ForumCollectionViewCell.swift
//  forum_revamped
//
//  Created by arora_72 on 09/08/17.
//  Copyright © 2017 indresh arora. All rights reserved.
//

import UIKit

class ForumCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var testLabel: UILabel!
    
    
    func reloadTableView(){
        tableView.reloadData()
    }


}//class


