//
//  FavoriteView.swift
//  Dictionary_V1
//
//  Created by Eric Sousa on 2/4/23.
//

import SwiftUI

struct FavoriteView: View {
    //  @ObservedObject var model = books
    var model = Book()
    var body: some View {
        //   var favorits = model.fav
       
            ScrollView {
                VStack(alignment: .leading, spacing:20){
                  
                Text("Favorites") .font(.title).bold()
                
                VStack(alignment: .leading){
                    
                    Image(systemName: "star.fill")
                    Text(model.nameEng)
                        .fontWeight(.bold)
                    
                    
                    HStack{Text("ESP")
                        Text(model.nameEsp)}
                    
                    HStack{Text("FRE")
                        Text(model.nameFre)}
                    HStack{Text("GER")
                        
                        Text(model.nameGer)}
                    HStack{Text("ITA")
                        Text(model.nameIta)}
                    
                    HStack
                    { Text("POR")
                        Text(model.namePort)}
                    
                }}
            .padding()
            
            /*List array with favorites
             VStack{
             List(model){index in
             Text(index.nameEng)
             }
             }*/
        }
        .padding(.horizontal)
    }
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
    }
}

/* VStack{ List(pizzasview){ index in
 
 VStack
 {Text(index.name)
 Text(index.topping1)
 Text(index.topping2)
 Text(index.topping3)
 }}*/
