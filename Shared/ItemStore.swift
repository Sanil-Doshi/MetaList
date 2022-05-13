//
//  ItemStore.swift
//  UList
//
//  Created by Sanil Doshi on 5/10/22.
//

import Foundation
import SwiftUI
import Combine

class ItemStore: ObservableObject{
    @Published var items: [MyItems]
    
    init (items: [MyItems] = []){
        self.items = items
    }
}
