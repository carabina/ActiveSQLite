//
//  ProductM.swift
//  ActiveSQLite
//
//  Created by zhou kai on 05/06/2017.
//  Copyright © 2017 wumingapie@gmail.com. All rights reserved.
//

import Foundation
import SQLite
@testable import ActiveSQLite

class ProductM:DBModel{
    
    var name:String!
    var price:NSNumber!
    var desc:String?
    var code:NSNumber?
    var publish_date:NSDate?
    
    var version:NSNumber?

    static let name = Expression<String>("product_name")
    static let price = Expression<NSNumber>("product_price")
    static let desc = Expression<String?>("desc")
    static let code = Expression<NSNumber?>("code")
    
    
    //Tests add column
    var type:NSNumber?
    static let type = Expression<NSNumber>("type")
    

    override class var nameOfTable: String{
        return "Product"
    }

    override func doubleTypes() -> [String]{
        
        return ["price"]
    }
    
    override class func mapper() -> [String:String]{
        return ["name":"product_name","price":"product_price"];
    }
    
    override class func transientTypes() -> [String]{
        return ["version"]
    }

    
}
