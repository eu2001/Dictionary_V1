//
//  SearchView.swift
//  Dictionary_V1
//
//  Created by Eric Sousa on 2/4/23.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        VStack(alignment: .leading, spacing:0){
             Text("Search") .font(.title).bold()
        Spacer()
            VStack(alignment: .center, spacing:25){
            Button("Search by Word"){}.foregroundColor(.white).frame(minWidth: 0, maxWidth: 200)
                    .padding(.all,20).font(.title2)
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: Gradient(colors: [.blue, .blue]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(10)
            Button("Search by Category"){}.foregroundColor(.white).frame(minWidth: 0, maxWidth: 200)
                    .padding(.all,20).font(.title2)
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: Gradient(colors: [.blue, .blue]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(10)
                Button("Search by Page"){}.foregroundColor(.white).frame(minWidth: 0, maxWidth: 200)
                    .padding(.all,20).font(.title2)
                        .foregroundColor(.white)
                        .background(LinearGradient(gradient: Gradient(colors: [.blue, .blue]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(10)
                
            }
        Spacer()
        }
        .padding(.all)
       
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
