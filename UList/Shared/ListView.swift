//
//  ListView.swift
//  UList
//
//  Created by Sanil Doshi on 5/10/22.
//

import SwiftUI

struct ListView: View {
    
    @StateObject var listStore: ListStore2
    @State private var name: String = ""
    
    var body: some View {
        
        Form {
            
            Section(header: Text("List Name")){
                
                DataInput(title: "List Name", userInput: $name)
            }
            
            Button(action: addNewListItem){
                
                Text("Add New List")
            }
        }
    }
    
    func addNewListItem(){
        
        let newList = MyList(id: UUID().uuidString, name: name)
        
        listStore.lists.append(newList)
    }
}

struct DataInput: View {
    
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
