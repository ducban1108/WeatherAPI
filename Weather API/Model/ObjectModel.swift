//
//  ObjectModel.swift
//  Weather API
//
//  Created by Just Kidding on 4/18/19.
//  Copyright © 2019 Just Kidding. All rights reserved.
//

import UIKit
typealias JSON = Dictionary<AnyHashable, Any>

struct Model {
    var name: String?
    var country: String?
    var localtime: String?
    var text: String?
//    var icon: URLSession?
    var temp_c: String?
    
//    init(name: String?, country: String?) {
//        self.name = name
//        self.country = country
//    }
    
    init(dictionary: JSON) {
        let location = dictionary["location"] as! JSON
        name = location["name"] as? String
        country = location["country"] as? String
        localtime = location["localtime"] as? String
        let current = dictionary["current"] as! JSON
        temp_c = current["temp_c"] as? String
        let condition = current["condition"] as! JSON
        text = condition["text"] as? String
//        icon = condition["icon"] as? URLSession
        
 
    }
}
