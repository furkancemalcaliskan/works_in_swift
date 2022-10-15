//
//  DetailsView.swift
//  FavouritesApp
//
//  Created by Furkan Cemal Çalışkan on 25.09.2022.
//

import SwiftUI

struct DetailsView: View {
    
    var chosenFavouriteElement : FavouriteElements
    
    var body: some View {
        
        VStack{
            Image(chosenFavouriteElement.imageName).resizable()
                .aspectRatio(contentMode: .fit)
            Text(chosenFavouriteElement.name)
                .font(.largeTitle)
                .padding()
            
            Text(chosenFavouriteElement.description)
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(chosenFavouriteElement: thedarknight)
    }
}
