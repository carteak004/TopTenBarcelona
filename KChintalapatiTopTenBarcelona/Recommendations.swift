//
//  Recommendations.swift
//  KChintalapatiTopTenBarcelona
//
//  Created by Kartheek chintalapati on 09/03/17.
//  Copyright © 2017 Kartheek Chintalapati. All rights reserved.
//

/*
 Author: Kartheek Chintalapati
 
 Z ID : z1788719
 
 This is the object that holds the values required
 */

import UIKit

class Recommendations: NSObject {
    
    var name : String!
    var desc : String!
    var address : String!
    var website : String!
    var contact : String!
    var hours : String!
    var imagecell : String!
    var image : String!
   // var type: String!
    
    init(name:String, desc:String, address:String, website:String, contact:String, hours:String, imagecell:String, image:String) {
        self.name = name
        self.desc = desc
        self.address = address
        self.website = website
        self.contact = contact
        self.hours = hours
        self.imagecell = imagecell
        self.image = image
       // self.type = type
    }
    
}
