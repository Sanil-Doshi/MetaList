//
//  ListDetails2.swift
//  UList
//
//  Created by Sanil Doshi on 5/12/22.
//

import SwiftUI

struct ListDetails2 : View {
    
    
    @StateObject public var itemStore: ItemStore = ItemStore(items: itemData)
    
    let selectedList: MyList
    
    var body: some View {
        
        NavigationView {
                
             List {
                 
                 // The ForEach loop calls ListCell to display the items withing a specific list
                                    
                ForEach(itemStore.items){ item in
                    ItemCell(item: item)
                }
                 
                 // calls the delete and move function
                .onDelete(perform: deleteItems)
                .onMove(perform: moveItems)
            }
             .navigationBarTitle(selectedList.name)
             .navigationBarItems(leading:
                NavigationLink (destination:
                ItemView(itemStore: self.itemStore)){
                 
                    Text("Add")
                     .foregroundColor(.blue)
             }, trailing: EditButton().foregroundColor(.red))
        }
    }
    
    //function to delete and move items withing a list
    func deleteItems(at offsets: IndexSet){
                itemStore.items.remove(atOffsets: offsets)
    }
    func moveItems(from source: IndexSet, to destination: Int){
                itemStore.items.move(fromOffsets: source, toOffset: destination)
    }
}

struct ListDetail_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ListDetails2(selectedList: listData[0])
    }
}

// The list cell feature uses Navigation link to
// navigate to the next page of items within the list

struct ItemCell: View {
    
    var item: MyItems
    var body: some View {
        
        NavigationLink(destination: ItemDetails2(selectedItem: item)){

            HStack{

                Text(item.name)
            }
        }
    }
}
