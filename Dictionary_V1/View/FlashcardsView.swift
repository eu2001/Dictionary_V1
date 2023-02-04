//
//  FlashcardsView.swift
//  Dictionary_V1
//
//  Created by Eric Sousa on 2/4/23.
//

import SwiftUI

struct FlashcardsView: View {
    // var cards = [Book]()
    //   var book: Book
    //@ObservedObject var card
    
    @State var pickerIndex = "ESP"
    @State var pickerIndexChap = "AIR"
    var body: some View {
        VStack(alignment: .leading, spacing:20)
        {
            Text("Flascards").font(.title).bold().padding(.bottom, 40.0)
            
            ScrollView{ VStack(spacing:0){
                Text("Select the Language to Practice:")
                    .font(.title3)
                    .multilineTextAlignment(.leading)
            Picker("Cards", selection: $pickerIndex)
         {   Text("Spanish").tag("ESP")
                Text("French").tag("FRE")
               Text("German").tag("GER")
              Text("Portuguese").tag("POR")
             Text("Italian").tag("ITA")
             Text("Hebrew").tag("HEB")
         }.pickerStyle(WheelPickerStyle())
        }
                Spacer()
                VStack(spacing:0){
                    Text("Select the Subject to Practice:")
                        .font(.title3)
                        .multilineTextAlignment(.leading)
                Picker("Cards", selection: $pickerIndexChap
                )
             {   Text("General Vocabulary").tag("GEN")
                    Text("Airplane Vocabulary").tag("AIR")
                   Text("Emergency").tag("EME")
                  Text("Meal Service").tag("MEA")
                 Text("Beverage Service").tag("BEV")
                 Text("Announcements").tag("ANN")
             }.pickerStyle(WheelPickerStyle())
            }
                Spacer()
                Button("Start"){}
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .background(.blue)
                    .foregroundColor(.white).cornerRadius(5)
               
        
            }}
        .padding(.horizontal)
        
    }}

struct FlashcardsView_Previews: PreviewProvider {
    static var previews: some View {
        FlashcardsView()
    }
}
