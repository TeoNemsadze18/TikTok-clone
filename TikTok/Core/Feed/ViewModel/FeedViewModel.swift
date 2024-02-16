//
//  FeedViewModel.swift
//  TikTok
//
//  Created by teona nemsadze on 16.02.24.
//

import Foundation

class FeedViewModel: ObservableObject {
    @Published var posts = [Post]()
    
     let videoUrls = [
     "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
     "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4",
     "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4",
     "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4"
    ]
    init() {
        fetchPosts()
    }
    func fetchPosts() {
        self.posts = [
            .init(id: NSUUID().uuidString, videoURL: videoUrls[0]),
            .init(id: NSUUID().uuidString, videoURL: videoUrls[1]),
            .init(id: NSUUID().uuidString, videoURL: videoUrls[2]),
            .init(id: NSUUID().uuidString, videoURL: videoUrls[3]),
        ]
    }
}
