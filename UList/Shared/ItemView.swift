//
//  ItemView.swift
//  UList
//
//  Created by Sanil Doshi on 5/11/22.
//

import SwiftUI

struct ItemView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @StateObject var itemStore: ItemStore
    @State private var name: String = ""
    @State private var description: String = ""
    
    // This asks the uses to input the name and description of an item
    
    var body: some View {
        
        Form {
            
            Section(header: Text("List Name")){
                
                ItemInput(title: "Item Name", userInput: $name)
                ItemInput(title: "Item Description", userInput: $description)
            }
            
            // The button feature adds a new item to the specific list
            
            Button(action: addNewListItem){
                
                Text("Add New Item")
            }
        }
    }
    
    // This function adds a new item by appending it to the item list
    
    func addNewListItem(){
        
        let newItem = MyItems(id: UUID().uuidString, name: name, description: description)
        
        itemStore.items.append(newItem)
        
        self.presentationMode.wrappedValue.dismiss()
        
        
    }
}

// This is the implementation of inputting a new item

struct ItemInput: View {
    
    var title: String
    @Binding var userInput: String
    
    var body: some View{
        
        VStack(alignment: HorizontalAlignment.leading){
            
            Text(title)
                .font(.headline)
            TextField("Enter \(title)", text: $userInput)
            
    .textFieldStyle(RoundedBorderTextFieldStyle())
        }
        .padding()
    }
}
