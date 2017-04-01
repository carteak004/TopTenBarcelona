//
//  webViewController.swift
//  KChintalapatiTopTenBarcelona
//
//  Created by Kartheek chintalapati on 10/03/17.
//  Copyright © 2017 Kartheek Chintalapati. All rights reserved.
//

/*
 Author: Kartheek Chintalapati
 
 Z ID : z1788719
 
 This view displays the website
 */

import UIKit

class webViewController: UIViewController {


    

    @IBOutlet weak var webView: UIWebView!
    
    
    @IBOutlet weak var webSearch: UISearchBar!
    
    
    var myURL1:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(myURL1)
        let myURL = NSURL(string: myURL1)
        let urlRequest = NSURLRequest(URL: myURL!)
        webView.loadRequest(urlRequest)
        
        webSearch.text = "http://"  // To minimize user typing.
    }
    
    // This function is called by the viewcontroller delegate
    // associated (connected) with the webSearch of typed UISearchBar.
    func searchBarSearchButtonClicked (searchbar: UISearchBar) {
        webSearch.resignFirstResponder() // Dismiss the keyboard
        let searchText = webSearch.text
        let url = NSURL(string: searchText!)
        let req = NSURLRequest(URL: url!)
        webView.loadRequest(req)
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
