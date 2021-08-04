//
//  Song.swift
//  TableList
//
//  Created by baiba.vaisle on 04/08/2021.
//

import Foundation


struct Song {
    
    let track: String
    let album: String
    let cover: String
    
    static func creteSong() ->[Song]{
        var songs: [Song] = []
        
        let tracks = DataManager.shared.track
        let albums = DataManager.shared.album
        let covers = DataManager.shared.cover
        
        for index in 0..<tracks.count {
            let song = Song(track: tracks[index], album: albums[index], cover: covers[index])
            songs.append(song)
        }
        
        return songs
    }
}
