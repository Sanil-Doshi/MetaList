//
//  ListStore.swift
//  UList
//
//  Created by Sanil Doshi on 5/11/22.
//

import Foundation
import SwiftUI
import Combine

class ListStore: ObservableObject{
    
    @Published var lists: [MyList]
    
    init (lists: [MyList] = []){
        self.lists = lists
    }
}
