//
//  FavoriteView.swift
//  Dictionary_V1
//
//  Created by Eric Sousa on 2/4/23.
//

import SwiftUI

struct FavoriteView: View {
    @ObservedObject var model = BookModel()
    //var model = Book()
    var body: some View {
        //   var favorits = model.fav
        
       // ScrollView {
        VStack(alignment: .leading, spacing:20){
                
               Text("Favorites") .font(.title).bold()
              
            VStack(alignment: .leading, spacing:0) {
    List(model.books) { r in
        HStack{Image(systemName: "star.fill")
        Text(r.nameEng)
            .fontWeight(.bold)}
        HStack{Text("SPA:")
            Text(r.nameEsp)
            Image(systemName: "speaker.fill")
        }
        HStack{Text("FRE:")
            Text(r.nameFre)
            Image(systemName: "speaker.fill")
        }
        HStack{Text("GER:")
            Text(r.nameGer)
            Image(systemName: "speaker.fill")
        }
        HStack{Text("POR:")
            Text(r.namePort)
            Image(systemName: "speaker.fill")
        }
        HStack{Text("ITA:")
            Text(r.nameIta)
            Image(systemName: "speaker.fill")
        }
        Spacer()
        
        
         
    
 
}
}
        }
        .padding(.horizontal)
        }
    }
//}

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

