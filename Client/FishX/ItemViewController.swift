//
//  ItemiewController.swift
//  FishX
//
//  Created by fang tairan on 2017/10/28.
//  Copyright © 2017年 Tayron. All rights reserved.
//

import UIKit
import AFNetworking
import SDWebImage


class ItemViewController: UIViewController,UITableViewDataSource,
    UITableViewDelegate{
    
    //MARK: - Property -
    let KeyBooks = "books"
    let identifierItemCell = "ItemCell"
    let URLString = "https://api.douban.com/v2/book/search"
    var tag = "Swift"
    var items = [Item]()
    
    
    
    //MARK: -IBOutlet -
    @IBOutlet weak var itemView: UITableView!
    
    
    
    //MARK: - life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NetManager.GET(URLString: URLString,paramaters:["tag":tag as NSObject,"start":0 as NSObject,"count":10 as NSObject],
                       success:{(responseObject)-> Void in
                        self.items = []
                        if let dict = responseObject as? [String:NSObject],let array = dict[self.KeyBooks] as? [[String:NSObject]]
                        {
                            for dict in array{
                                self.items.append(Item(dict:dict))
                            }
                            self.itemView.reloadData()
                        }
                        })
        {(error) -> Void in
            print(error)
            
        }
    }
    //MARK: - UITableView -
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let itemCell = tableView.dequeueReusableCell(withIdentifier: identifierItemCell,
                                                     for: indexPath) as! ItemCell
        itemCell.configureWithItem(item: items[indexPath.row])
        return itemCell
    }
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
