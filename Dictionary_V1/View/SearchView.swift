//
//  SearchView.swift
//  Dictionary_V1
//
//  Created by Eric Sousa on 2/4/23.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        VStack(spacing:30){
            
            Button("Search by Word"){}.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).background(.blue).foregroundColor(.white).cornerRadius(25)
            Button("Search by Category"){}.padding(.all).background(.blue).foregroundColor(.white).cornerRadius(25)
            Button("Search by Chapter"){}.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).background(.blue).foregroundColor(.white).cornerRadius(25)
            
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
