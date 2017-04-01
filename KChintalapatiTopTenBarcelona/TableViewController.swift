//
//  RTableViewController.swift
//  KChintalapatiTopTenBarcelona
//
//  Created by Kartheek chintalapati on 10/03/17.
//  Copyright © 2017 Kartheek Chintalapati. All rights reserved.
//

/*
 Author: Kartheek Chintalapati
 
 Z ID : z1788719
 
 This is the view which contains the names of the places with a icon
 */

import UIKit

class TableViewController: UITableViewController {

    var rObject = [Recommendations]() // Instantial an object of the Recoomendations class
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        readPropertyList()
    }

    //This function finds the property list, read each dictionary entries (properties)
    // in the plist arrray, and append initalize the object protperies in the President class.
    func readPropertyList()
    {
        let path = NSBundle.mainBundle().pathForResource("Recommendations", ofType: "plist")!
        let RArray:NSArray = NSArray(contentsOfFile: path)!
        
        for dictionary in RArray{
            let name = dictionary["name"] as! String
            let description = dictionary["description"] as! String
            let address = dictionary["address"] as! String
            let website = dictionary["website"] as! String
            let contact = dictionary["contact"] as! String
            let hours = dictionary["hours"] as! String
            let imagecell = dictionary["image-cell"] as! String
            let image = dictionary["image"] as! String
            
            //let type = dictionary["type"] as! String
            
            rObject.append(Recommendations(name: name, desc: description, address: address, website: website, contact: contact, hours: hours, imagecell: imagecell, image: image))
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return rObject.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        // Configure the cell...
        let rec:Recommendations = rObject[indexPath.row]
        let cell:TableViewCell = tableView.dequeueReusableCellWithIdentifier("CELL") as! TableViewCell

        //place cell image , president name and sub titles in table cell
        let cellimagename = UIImage(named: rec.image)!
        cell.rImagecell.image = cellimagename
        cell.rLabel.text = rec.name

        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        print(segue.identifier)
        if(segue.identifier == "DetailView")
        {
            let detailedVC = segue.destinationViewController as! DetailViewController
        
            //prepare to send data to the DetailsViewController
            if let indexPath = self.tableView.indexPathForSelectedRow{
                let rec:Recommendations = rObject[indexPath.row]
            
                detailedVC.navigationItem.title = rec.name
                detailedVC.sentData1 = rec.image
                detailedVC.sentData2 = rec.name
                detailedVC.sentData3 = rec.desc
                detailedVC.sentData4 = rec.address
                detailedVC.sentData5 = rec.website
                detailedVC.sentData6 = rec.contact
                detailedVC.sentData7 = rec.hours
            }
        }
    }
    

}
