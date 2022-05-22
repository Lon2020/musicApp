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
    
    let songs = Songs();
    
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
        return songs.getSongs().count;
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let songCell = tableView.dequeueReusableCell(withIdentifier: "songCell", for: indexPath)
        let song = songs.getSongs()[indexPath.row]
        
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
        let selectedVideo = songs.getSongs()[indexPath.row]
        let videoPath = Bundle.main.path(forResource: selectedVideo.videoName, ofType: "mp4")
        let videoPathURL = URL(fileURLWithPath: videoPath!)
        player = AVPlayer(url: videoPathURL)
        playerViewController.player = player
        self.present(playerViewController, animated: true, completion: nil)
        
    }
    
}


