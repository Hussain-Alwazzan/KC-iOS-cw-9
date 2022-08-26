//
//  MovieInfo.swift
//  myMovies
//
//  Created by Hussain Alwazzan on 24/08/2022.
//

import SwiftUI

struct MovieInfo: View {
    var ourmovie: MovieModel
    var body: some View {
        ZStack{
            Color.black.opacity(0.3)
                .ignoresSafeArea()
            Image(ourmovie.MovieName).opacity(0.5)
                .blur(radius: 7).ignoresSafeArea()
               
        
        VStack{
            Image(ourmovie.MovieName)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 250, height: 250)
                
            Text(ourmovie.MovieName)
                .font(.title)
                .foregroundColor(.white)
            
            ScrollView(.horizontal){
                HStack{
                    ForEach(ourmovie.MovieAct, id:\.self){ act in
                        VStack{
                            Text(act)
                            Image(act)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200, height: 200)
                            
                        }
                    }
                }
            }
         }
        }
    }
}

struct MovieInfo_Previews: PreviewProvider {
    static var previews: some View {
        MovieInfo(ourmovie: MovieModel(MovieName: "Avenger", MovieAct: ["Robert Doweny Jr"]))
    }
}
