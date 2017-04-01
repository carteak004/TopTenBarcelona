//
//  DetailViewController.swift
//  KChintalapatiTopTenBarcelona
//
//  Created by Kartheek chintalapati on 10/03/17.
//  Copyright © 2017 Kartheek Chintalapati. All rights reserved.
//

/*
 Author: Kartheek Chintalapati
 
 Z ID : z1788719
 
 This view shows the detail of each place
 */

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var desc: UILabel!
    
    @IBOutlet weak var address: UILabel!
    
    @IBOutlet weak var website: UIButton!
    
    @IBOutlet weak var contact: UILabel!
    
    @IBOutlet weak var hours: UILabel!
    
    //MARK: Prepare variables to hold data sent from the TableViewController
    var sentData1:String!
    var sentData2:String!
    var sentData3:String!
    var sentData4:String!
    var sentData5:String!
    var sentData6:String!
    var sentData7:String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
print(sentData2)
        image.image = UIImage(named: sentData1)
        name.text = sentData2
        desc.text = sentData3
        address.text = sentData4
        website.setTitle(sentData5, forState: .Normal)
        contact.text = sentData6
        hours.text = sentData7
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if(segue.identifier == "webView"){
            if let webVC:webViewController=segue.destinationViewController as? webViewController{
                webVC.myURL1=sentData5
                
            }
        }
        
        
        
        
        
    }


}
