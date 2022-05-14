//
//  ListView2.swift
//  UList
//
//  Created by Sanil Doshi on 5/12/22.
//

import SwiftUI

// ListView2 acts as a view to add a new list to the MetaList
// It asks the user for an input and uses the Button feature to add it
// It then moves back to the previous page

struct ListView2: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @StateObject var listStore: ListStore2
    @State private var name: String = ""
    
    var body: some View {
        
        Form {
            
            
            Section(header: Text("List Name")){
                
                // asks the uses to input the name of the list
                
                DataInput(title: "List Name", userInput: $name)
            }
            
            // Button to add new list
            
            Button(action: addNewListItem){
                
                Text("Add New List")
            }
        }
    }
    
    func addNewListItem(){
        
        let newList = MyList(id: UUID().uuidString, name: name)
        
        // appends the new list to the array
        
        listStore.lists.append(newList)
        
        // automatically navigates to the previous page after a list is added
        
        self.presentationMode.wrappedValue.dismiss()
        
    }
}

// This structure implements the feature to input the uses data for a new list

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
