//
//  ItemDetails2.swift
//  UList
//
//  Created by Sanil Doshi on 5/12/22.
//

import SwiftUI

// this structure shows the details of an item when it is clicked

struct ItemDetails2 : View {

    let selectedItem: MyItems
    var body: some View {

        Form{

            Section (header: Text("Items Details")){

                Text(selectedItem.name)
                    .font(.headline)

                Text(selectedItem.description)
                    .font(.body)

            }
        }
    }
}

// calls the json file to display the current items in the list

struct ItemDetail_Previews: PreviewProvider {

    static var previews: some View {
        
        ItemDetails2(selectedItem: itemData[0])
    }
}
