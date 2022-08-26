//
//  MovieModel.swift
//  myMovies
//
//  Created by Hussain Alwazzan on 24/08/2022.
//

import Foundation

struct MovieModel: Identifiable{
    let id = UUID()
    var MovieName:String
    var MovieAct: [String]
}
var MyMovies = [
MovieModel(MovieName: "Avengers", MovieAct: ["Robert Doweny Jr"]),
MovieModel(MovieName: "Harry Potter", MovieAct: ["Daniel"]),
MovieModel(MovieName: "Spider Man", MovieAct: ["Tom"])
    ]
