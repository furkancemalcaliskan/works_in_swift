//
//  FavouriteModel.swift
//  FavouritesApp
//
//  Created by Furkan Cemal Çalışkan on 25.09.2022.
//

import Foundation
import SwiftUI

struct FavouriteModel : Identifiable {
    var id = UUID()
    var title : String
    var elements : [FavouriteElements]
    
    
}

struct FavouriteElements : Identifiable {

    var id = UUID()
    var name : String
    var imageName : String
    var description : String
    
}

//Bands

let metallica = FavouriteElements(name: "Metallica", imageName: "furkan", description: "No 1 Music Band")
let megadeth = FavouriteElements(name: "Megadeth", imageName: "furkan", description: "No 2 Music Band")
let ironmaiden = FavouriteElements(name: "Iron Maiden", imageName: "furkan", description: "No 3 Music Band")

let favouriteBands = FavouriteModel(title: "Favourite Bands", elements: [metallica,megadeth,ironmaiden])


//Movies

let killbill = FavouriteElements(name: "Kill Bill", imageName: "furkan", description: "No 1 Movie")
let thedarknight = FavouriteElements(name: "The Dark Knight", imageName: "furkan", description: "No 2 Movie")
let pulpfiction = FavouriteElements(name: "Pulp Fiction", imageName: "furkan", description: "No 3 Movie")

let favouriteMovies = FavouriteModel(title: "Favourite Movies", elements: [killbill,thedarknight,pulpfiction])

let myFavourites = [favouriteBands,favouriteMovies]
