//
//  ContentView.swift
//  FavouritesApp
//
//  Created by Furkan Cemal Çalışkan on 25.09.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
        
        List {
            
            ForEach(myFavourites) { favourite in
                
                Section(header: Text(favourite.title)) {
                    ForEach(favourite.elements) { element in
                        NavigationLink(destination: DetailsView(chosenFavouriteElement: element)) {
                            Text(element.name)
                        }
                    }
                }
                
            }
            
        }.navigationBarTitle(Text("Favourites"))

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
