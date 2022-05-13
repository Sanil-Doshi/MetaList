//
//  ItemData.swift
//  UList
//
//  Created by Sanil Doshi on 5/12/22.
//

import UIKit
import SwiftUI
import Foundation

var itemData: [MyItems] = loadJson("itemData.json")

func loadItemJson<T: Decodable>(_ filename: String) -> T{
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    
    else{
        fatalError("\(filename) not found")
    }
    
    do{
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Could not load file \(filename): \(error)")
    }
    
    do{
        return try JSONDecoder().decode(T.self, from: data)
    } catch {
        fatalError("Could not parse \(filename): \(error)")
    }
}
