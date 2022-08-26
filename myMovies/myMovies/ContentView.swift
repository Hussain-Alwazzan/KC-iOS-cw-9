//
//  ContentView.swift
//  myMovies
//
//  Created by Hussain Alwazzan on 24/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                ForEach(MyMovies){ movie in
                    NavigationLink(destination: {MovieInfo(ourmovie: movie)}, label: {RowView(movie: movie.MovieName)})
                }
            }.navigationTitle("Movies")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
