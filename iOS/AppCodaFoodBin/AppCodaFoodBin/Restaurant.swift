//
//  Restaurant.swift
//  AppCodaFoodBin
//
//  Created by Dan Johnson on 8/17/20.
//  Copyright © 2020 Dan Johnson. All rights reserved.
//

import Foundation

class Restaurant {
    var name: String
    var type: String
    var location: String
    var image: String
    var isVisited : Bool
    var phone : String
    var description : String
    
    init(name: String, type: String, location: String, image: String, isVisited: Bool, phone: String, description: String) {
        self.name = name
        self.type = type
        self.location = location
        self.image  = image
        self.isVisited = isVisited
        self.phone = phone
        self.description = description
    }
    
    convenience init() {
        self.init(name: "", type: "", location: "", image: "", isVisited: false, phone: "", description: "")
    }
} // clas

