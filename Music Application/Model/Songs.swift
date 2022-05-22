//
//  Songs.swift
//  Music Application
//
//  Created by Edoardo Menon on 22/5/2022.
//

import Foundation

class Songs {
    let songList = [ Song(songName: "Congratulations",
                          songArtist: "Post Malone ft.Quavo",
                          songImageName: "congratulation",
                          videoName: "Post Malone-Congratulations"),
                     Song(songName: "Love yourself",
                          songArtist: "Justin Bieber",
                          songImageName: "Love yourself",
                          videoName: "Justin Bieber-Love yourself"),
                     Song(songName: "Savage",
                          songArtist: "Post Malone ft.21 Savage",
                          songImageName: "savage",
                          videoName: "Post Malone-Savage"),
                     Song(songName: "Lose yourself",
                          songArtist: "Eminem",
                          songImageName: "Lose yourself",
                          videoName: "Eminem-Love yourself"),
                     Song(songName: "Monsters",
                          songArtist: "All Time Low",
                          songImageName: "Monsters",
                          videoName: "All Time Low-Monsters"),
                     Song(songName: "Bohemian Rhapsody",
                          songArtist: "Queen",
                          songImageName: "Bohemian Rhapsody",
                          videoName: "Queen-Bohemian Rhapsody"),
                     Song(songName: "Shape of You",
                          songArtist: "Ed Sheeran",
                          songImageName: "Shap of You",
                          videoName: "Ed Sheeran-Shape of You"),
                     Song(songName: "Billionaire",
                          songArtist: "Travie McCoy ft.Bruno Mars",
                          songImageName: "Billionaire",
                          videoName: "Travie McCoy-Billionaire"),
                     Song(songName: "Sunflower",
                          songArtist: "Post Malone ft.Swae Lee",
                          songImageName: "sunflower",
                          videoName: "Post Malone-Sunflower"),
                     ]
    
    public func getSongs() -> [Song] {
        return songList;
    }
    
    
}
