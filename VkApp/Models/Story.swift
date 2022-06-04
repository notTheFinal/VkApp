//
//  Story.swift
//  VkApp
//
//  Created by Александр on 04.06.2022.
//

import Foundation

struct Story {
    let url: URL
    let name: String
    
    static func getVideos() -> [Story] {
        [
            Story(url: URL(fileURLWithPath: Bundle.main.path(forResource: "1", ofType: "mp4")!),
                           name: "1"),
            Story(url: URL(fileURLWithPath: Bundle.main.path(forResource: "2", ofType: "mp4")!),
                           name: "2"),
            Story(url: URL(fileURLWithPath: Bundle.main.path(forResource: "3", ofType: "mp4")!),
                           name: "3"),
            Story(url: URL(fileURLWithPath: Bundle.main.path(forResource: "4", ofType: "mp4")!),
                           name: "4"),
            Story(url: URL(fileURLWithPath: Bundle.main.path(forResource: "5", ofType: "mp4")!),
                           name: "5"),
        ]
    }
}
