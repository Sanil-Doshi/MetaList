//
//  ItemDetails2.swift
//  UList
//
//  Created by Sanil Doshi on 5/12/22.
//

import SwiftUI

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

struct ItemDetail_Previews: PreviewProvider {

    static var previews: some View {
        
        ItemDetails2(selectedItem: itemData[0])
    }
}
