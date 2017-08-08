//
//  ViewController.swift
//  forum_revamped
//
//  Created by arora_72 on 08/08/17.
//  Copyright © 2017 indresh arora. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var inputTextField: UITextField!

    var stringArray: [[String]] = [["table for noobies"],["table for hadoukens"]]
    
    
    var noobieString: [String] = []
    var forumString: [String] = []
    
    
    var collectionArray: [UIColor] = [UIColor.black, UIColor.blue]
    
    let dataSourceModel = Model()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("view did load")
        print(stringArray)
        loadData()
        
    }
    
    func loadData(){
        
        self.dataSourceModel.colorArray = self.stringArray;
        print("load data")
        print(dataSourceModel.colorArray);
        self.collectionView.reloadData()

    }
    @IBAction func reloadData(_ sender: Any) {
        
        self.collectionView.reloadData();
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionArray.count;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath) as! ForumCollectionViewCell
        
        cell.backgroundColor = collectionArray[indexPath.item]
        cell.tableView.tag = indexPath.row + 1;
        cell.tableView.dataSource = dataSourceModel
        cell.tableView.delegate = dataSourceModel
        cell.tableView.reloadData()
        
        
        return cell
    }
    
    
    @IBAction func buttonAction(_ sender: Any) {
        if let userData = inputTextField.text{
            
            //printing the data
            print(userData);
            noobieString.append(userData);
            print(noobieString.count);
            refreshArray();
         
        }else{
            print("data not entered");
        }

    }
    
    func refreshArray(){
        self.stringArray = []
        print(stringArray)
        self.stringArray.append(noobieString)
        self.stringArray.append(forumString)
        print("refresh array")
        print(stringArray)
        self.collectionView.reloadData()
         refreshingData()
        
    }
    
    func refreshingData(){
        self.dataSourceModel.colorArray = self.stringArray;
        print("refreshing Data")
        print(dataSourceModel.colorArray);
        

    }
    
    
    
    
}//class

