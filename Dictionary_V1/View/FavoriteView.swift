//
//  FavoriteView.swift
//  Dictionary_V1
//
//  Created by Eric Sousa on 2/4/23.
//

import SwiftUI

struct FavoriteView: View {
    @ObservedObject var model = BookModel()
   @State var favOn = true
    //var model = Book()
    var body: some View {
        //   var favorits = model.fav
        
       // ScrollView {
        VStack(alignment: .center, spacing:20){
                
               Text("Favorites") .font(.title).bold()
              
            VStack(alignment: .leading, spacing:0) {
    List(model.books) { r in
        ZStack{
            Rectangle().background(.white).foregroundColor(.white).frame(minWidth: 0,  maxWidth: 300, minHeight: 0,  alignment: .center).cornerRadius(15).shadow(color: .gray, radius: 5, x: 5, y: 5)
            VStack(alignment: .leading,spacing:2){
                HStack{Image(systemName: "star.fill").foregroundColor(.yellow)
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
                HStack{Text("HEB:")
            Text(r.nameEng)
            Image(systemName: "speaker.fill")
        }
                HStack{Text("ASL:")
            Text(r.nameEng)
            Image(systemName: "play.fill")
        }
                Spacer()
            }
       
        }
        
        
         
    
 
}
            }
            .padding(.horizontal)
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

