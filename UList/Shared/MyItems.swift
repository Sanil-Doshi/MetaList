//
//  MyItems.swift
//  UList
//
//  Created by Sanil Doshi on 5/12/22.
//

import SwiftUI

struct MyItems : Codable, Identifiable {
    
    // uses an id, name, and description to define an item in the list
    
    var id: String
    var name: String
    
    var description: String
        
}
