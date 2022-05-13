//
//  PlayListViewController.swift
//  Music Application
//
//  Created by วิศวปกรณ์ on 11/5/2565 BE.
//

import Foundation
import UIKit
import AVKit
import AVFoundation

class PlaylistViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var table: UITableView!
    let whiteTextColour = UIColor.white
    
    var player = AVPlayer()
    var playerViewController = AVPlayerViewController()
    
    var songs = [Song]()
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
    }
    
    // Row Height
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    // Number of Section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songList.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let songCell = tableView.dequeueReusableCell(withIdentifier: "songCell", for: indexPath)
        let song = songList[indexPath.row]
        
        //Text font and size
        songCell.textLabel?.font = UIFont(name: "Helvetica-Bold", size: 18)
        songCell.detailTextLabel?.font = UIFont(name: "Helvetica", size: 17)
        songCell.accessoryType = .disclosureIndicator
        
        //Init data
        songCell.textLabel?.text = song.songName
        songCell.detailTextLabel?.text = song.songArtist
        songCell.imageView?.image = UIImage(named: song.songImageName)
        
        //Text Colour
        songCell.textLabel?.textColor = whiteTextColour
        songCell.detailTextLabel?.textColor = whiteTextColour
        
        //Seperator marin to 0
        songCell.separatorInset = UIEdgeInsets.zero
        songCell.layoutMargins = UIEdgeInsets.zero
        songCell.layoutMargins = UIEdgeInsets.zero
        
        return songCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        tableView.deselectRow(at: indexPath, animated: true)
        playVideo(at: indexPath)
        
    }
    
    func playVideo(at indexPath: IndexPath)
    {
        let selectedVideo = songList[indexPath.row]
        let videoPath = Bundle.main.path(forResource: selectedVideo.videoName, ofType: "mp4")
        let videoPathURL = URL(fileURLWithPath: videoPath!)
        player = AVPlayer(url: videoPathURL)
        playerViewController.player = player
        self.present(playerViewController, animated: true, completion: nil)
        
    }
    
}


