//
//  Movie.swift
//  TableList
//
//  Created by baiba.vaisle on 04/08/2021.
//

import Foundation

struct Movie {
    
    let movie: String
    let year: String
    let poster: String
    
    static func creteMovie() ->[Movie]{
        var movies: [Movie] = []
        
        let movies = DataManager.shared.movie
        let years = DataManager.shared.year
        let posters = DataManager.shared.poster
        
        for index in 0..<movies.count {
            let movie = Movie(movie: movies[index], year: years[index], poster: posters[index])
            movies.append(movie)
        }
        
        return movies
    }
}
