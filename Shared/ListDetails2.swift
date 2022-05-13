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
                                    
                ForEach(itemStore.items){ item in
                    ItemCell(item: item)
                }
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
}

struct ListDetail_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ListDetails2(selectedList: listData[0])
    }
}

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
