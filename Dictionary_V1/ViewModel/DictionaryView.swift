//
//  DictionaryView.swift
//  Dictionary_V1
//
//  Created by Eric Sousa on 2/3/23.
//

import Foundation
class BookModel : ObservableObject {
    
    @Published var books = [Book]()
 init() {
            
            // Get the path to the json file within the app bundle
            let pathString = Bundle.main.path(forResource: "data", ofType: "json")
            
            if let path = pathString {
                
                // Create a url object
                let url = URL(fileURLWithPath: path)
                
                // Error handling
                do {
                    // Put the code that potentially throws an error
                    
                    // Create a data object with the data at the url
                    let data = try Data(contentsOf: url)
                    
                    // Parse the data
                    let decoder = JSONDecoder()
                    
                    do {
                        let bookData = try decoder.decode([Book].self, from: data)
                        
                        // Set unique IDs for each instance
                 //       for r in bookData {
                            
                            // Set a unique ID for each recipe in the recipeData array
                   //         r.id = UUID()
                  //      }
                        
                        // Assign the data to the published property
                        self.books = bookData
                    }
                    catch {
                        // Log Couldn't decode json
                        print(error)
                    }
                    
                }
                catch {
                    // Execution will come here if an error is thrown
                    // Handle the error
                    print(error)
                }
                
                
                
            }
            
        }
    
   /* /// Update the specified book's rating. Does nothing if `forId` is invalid.
    func updateRating(forId: Int, rating: Int) {
        if let index = books.firstIndex(where: { $0.id == forId }) {
            books[index].rating = rating
        }
    }
    
    /// Update the specified book's favourite status. Does nothing if `forId` is invalid.
    func updateFavourite(forId: Int) {
        if let index = books.firstIndex(where: { $0.id == forId }) {
            books[index].isFavourite.toggle()
        }
    }
    
    /// Update the specified book's current page. Does nothing if `forId` is invalid.
    func updatePage(forId: Int, page: Int) {
     b   if let index = books.firstIndex(where: { $0.id == forId }) {
            books[index].currentPage = page
        }
    }
    */
}
