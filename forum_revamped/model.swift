//
//  model.swift
//  forum_revamped
//
//  Created by arora_72 on 09/08/17.
//  Copyright © 2017 indresh arora. All rights reserved.
//

import Foundation

import UIKit

class Model: NSObject, UITableViewDelegate, UITableViewDataSource{
    
    
    var colorArray: [[String]] = [];
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colorArray[tableView.tag-1].count
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as! forumTableViewCell
        print(colorArray);
        cell.ForumLabel.text = colorArray[tableView.tag-1][indexPath.row];
        cell.selectionStyle = .none
//        cell.backgroundColor = colorArray[tableView.tag-1][indexPath.row]
        
        return cell
    }
    
    
    
       
    
    
}
