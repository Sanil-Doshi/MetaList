//
//  ItemView.swift
//  UList
//
//  Created by Sanil Doshi on 5/11/22.
//

import SwiftUI

struct ItemView: View {
    
    @StateObject var itemStore: ItemStore
    @State private var name: String = ""
    @State private var description: String = ""
    
    var body: some View {
        
        Form {
            
            Section(header: Text("List Name")){
                
                ItemInput(title: "Item Name", userInput: $name)
                ItemInput(title: "Item Description", userInput: $description)
            }
            
            Button(action: addNewListItem){
                
                Text("Add New Item")
            }
        }
    }
    
    func addNewListItem(){
        
        let newItem = MyItems(id: UUID().uuidString, name: name, description: description)
        
        itemStore.items.append(newItem)
    }
}

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
