//
//  TableViewController.swift
//  MyApp
//
//  Created by Shiva Narrthine on 6/6/14.
//  Copyright (c) 2014 Shiva Narrthine. All rights reserved.
//

import UIKit



@objc(TableViewController) class TableViewController: UITableViewController {

    @IBAction func unwindToList(segue:UIStoryboardSegue){
        
    }
    
    var toDoItems: NSMutableArray = []
   
    
    override func viewDidLoad(){
        super.viewDidLoad()
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "ListPrototypeCell")
        loadInitialData()
    }
    
    func loadInitialData(){
        var item1 = ToDoItem(name:"Buy milk")
        self.toDoItems.addObject(item1)
        var item2 = ToDoItem(name: "Buy eggs")
        self.toDoItems.addObject(item2)
        var item3 = ToDoItem(name: "Read a book")
        self.toDoItems.addObject(item3)
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return self.toDoItems.count
    }
    
    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {

        let CellIndentifier: NSString = "ListPrototypeCell"
        var cell : UITableViewCell = tableView.dequeueReusableCellWithIdentifier(CellIndentifier) as UITableViewCell
        var todoitem: ToDoItem = self.toDoItems.objectAtIndex(indexPath.row) as ToDoItem  
        cell.textLabel.text = todoitem.itemName
        
        
        return cell
    }
}
