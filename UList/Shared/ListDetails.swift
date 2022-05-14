//
//  ListDetails.swift
//  UList
//
//  Created by Sanil Doshi on 5/11/22.
//

import SwiftUI

struct ListDetails : View {
    
    let selectedList: MyList
    var body: some View {
        
        Form{
            
            Section (header: Text("Lists Details")){
                
                Text(selectedList.name)
                    .font(.headline)
                
            }
        }
    }
}

struct ListDetail_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ListDetails(selectedList: listData[0])
    }
}
