//
//  ContentView.swift
//  Shared
//
//  Created by Sanil Doshi on 5/5/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var listStore : ListStore2 = ListStore2(lists: listData)
    
    var body: some View {
        
        NavigationView {
                
             List {
                                    
                ForEach(listStore.lists){ list in
                    ListCell(list: list)
                }
            }
             .navigationBarTitle(Text("My List"))
             .navigationBarItems(leading:
                NavigationLink (destination:
                ListView2(listStore: self.listStore)){
                 
                    Text("Add")
                     .foregroundColor(.blue)
             }, trailing: EditButton().foregroundColor(.red))
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

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
