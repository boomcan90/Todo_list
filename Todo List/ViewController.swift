 //

//  ViewController.swift

//  Todo List

//

//  Created by Arjun Brar on 28/12/14.

//  Copyright (c) 2014 Arjun Brar. All rights reserved.
//


import UIKit

 
class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {
    
    
var tasks : [String] = []
    
@IBOutlet var tableview : UITableView!
    
    
   
 override func viewDidLoad() {
        
super.viewDidLoad()
       
// Do any additional setup after loading the view, typically from a nib.
    
}
    
    
override func didReceiveMemoryWarning() {
       
super.didReceiveMemoryWarning()
        
// Dispose of any resources that can be recreated.
    
}
    
    
    
func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
var cell : UITableViewCell! = tableView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell!
       
 if (cell != nil) {
            cell = UITableViewCell(style: UITableViewCellStyle.Default , reuseIdentifier: "Cell")
        
}
       
 cell.textLabel?.text = tasks[indexPath.row]

        return cell
  
  }
   
 
    func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
   
     return 1
  
  }
    
   
 func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
   
     return tasks.count
  
  }
    
    
@IBAction func addpressed (AnyObject?){
     
   var alert = UIAlertView()

        alert.title = "Add Item"
    
    alert.message = "Add content of your item"
    
    alert.addButtonWithTitle("Cancel")
     
   alert.addButtonWithTitle("OK")
 
       alert.alertViewStyle = .PlainTextInput
    
    alert.delegate = self
  
      alert.show()

    }
    
 
   func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex : Int) {
 
       if buttonIndex != 1 {
  
          return
      
  }
         
   tasks.append(alertView.textFieldAtIndex(0)!.text)
    
        tableview.reloadData()
        
    
        }
 
   }
