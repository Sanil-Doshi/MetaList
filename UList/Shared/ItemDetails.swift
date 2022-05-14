//
//  ItemDetails.swift
//  UList
//
//  Created by Sanil Doshi on 5/10/22.


import SwiftUI

struct ItemDetails : View {

    let selectedItem: Item
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

        ItemDetails(selectedItem: itemData[0])
    }
}
