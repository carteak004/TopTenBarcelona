//
//  AuthorViewController.swift
//  KChintalapatiTopTenBarcelona
//
//  Created by Kartheek chintalapati on 10/03/17.
//  Copyright © 2017 Kartheek Chintalapati. All rights reserved.
//

/*
 Author: Kartheek Chintalapati
 
 Z ID : z1788719
 
 This view contains the author info
 */

import UIKit

class AuthorViewController: UIViewController {

    @IBOutlet weak var authorWeb: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Create a path to index.html "data " file bundled under the "html" folder.
        
        let path = NSBundle.mainBundle().pathForResource("/html/index", ofType: "html")
        let data: NSData = NSData(contentsOfFile: path!)!
        let html = NSString(data: data, encoding:NSUTF8StringEncoding)
        
        
        // Load the webView outlet with the content of the index.html file
        authorWeb.loadHTMLString(html as! String, baseURL: NSBundle.mainBundle().bundleURL)

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

}
