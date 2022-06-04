//
//  StoryViewController.swift
//  VkApp
//
//  Created by Александр on 04.06.2022.
//

import UIKit
import AVKit
import AVFoundation

class StoryViewController: UIViewController {

    private let queuePlayer = AVQueuePlayer()
    let videos = Story.getVideos()
    var videoIndex = 0
    
    private func addAllVideosToPlayer() {
        for video in videos {
            let asset = AVURLAsset(url: video.url)
            let item = AVPlayerItem(asset: asset)
            
            queuePlayer.insert(item, after: queuePlayer.items().last)
        }
    }
    
    func playVideo() {
        addAllVideosToPlayer()
        let player = queuePlayer
        let layer = AVPlayerLayer(player: player)
        layer.frame = view.bounds
        
        view.layer.addSublayer(layer)
        
        player.play()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        playVideo()
    }
    
    
}
