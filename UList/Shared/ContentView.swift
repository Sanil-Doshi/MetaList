//
//  ContentView.swift
//  Shared
//
//  Created by Sanil Doshi on 5/5/22.
//

import SwiftUI

// This content view structure creates a list and displays the list
// It also has the ability to add a list, remove a list, and edit move a list
struct ContentView: View {
    
    @StateObject private var listStore : ListStore2 = ListStore2(lists: listData)
    
    var body: some View {
        
        NavigationView {
                
             List {
                 
                 // The ForEach loop calls ListCell to display the listItems
                                    
                ForEach(listStore.lists){ list in
                    ListCell(list: list)
                }
                //calls the function to delete and move items
                .onDelete(perform: deleteListItems)
                .onMove(perform: moveListItems)
            }
            //the title of the list is "My List"
             .navigationBarTitle(Text("My List"))
            //implements the "add" and "edit" feature
             .navigationBarItems(leading:
                NavigationLink (destination:
                ListView2(listStore: self.listStore)){
                 
                    Text("Add")
                     .foregroundColor(.blue)
             }, trailing: EditButton().foregroundColor(.red))
        }
    }
    //function to add and delete items
    func deleteListItems(at offsets: IndexSet){
                listStore.lists.remove(atOffsets: offsets)
    }
    func moveListItems(from source: IndexSet, to destination: Int){
                listStore.lists.move(fromOffsets: source, toOffset: destination)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// The list cell feature uses Navigation link to
// navigate to the next page of items within the list

struct ListCell: View {
    
    var list: MyList
    var body: some View {
    
        NavigationLink(destination: ListDetails2(selectedList: list)){
            
            HStack{
                
                Text(list.name)
            }
        }
    }
}
