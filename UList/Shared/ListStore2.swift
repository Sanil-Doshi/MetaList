//
//  ListStore2.swift
//  UList
//
//  Created by Sanil Doshi on 5/12/22.
//

import Foundation
import SwiftUI
import Combine

class ListStore2: ObservableObject{
    
    @Published var lists: [MyList]
    
    // the array that contains the different lists
    
    init (lists: [MyList] = []){
        self.lists = lists
    }
}
