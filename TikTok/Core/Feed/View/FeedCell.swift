//
//  FeedCell.swift
//  TikTok
//
//  Created by teona nemsadze on 12.02.24.
//

import SwiftUI
import AVKit
  
struct FeedCell: View {
    let post: Post
    var player: AVPlayer
    
    init(post: Post, player: AVPlayer) {
        self.post = post
        self.player = player
    }
    
    var body: some View {
        ZStack {
            CustomVideoPlayer(player: player)
       .containerRelativeFrame([.horizontal, .vertical])
            VStack {
                Spacer()
                
                HStack (alignment: .bottom){
                    VStack (alignment: .leading) {
                        Text("Lasha Bizz")
                            .fontWeight(.semibold)
                        Text("👻✈️☠️")
                    }
                    .foregroundStyle(.white)
                    .font(.subheadline)
                    Spacer()
                    
                    VStack (spacing: 28){
                        Circle()
                            .frame(width: 48, height: 49)
                            .foregroundColor(.green)
                        Button {
                            
                        } label: {
                            VStack {
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                    .foregroundColor(.white)
                                Text("23K")
                                    .font(.caption)
                                    .foregroundColor(.white)
                            }
                        }
                        Button {
                            
                        } label: {
                            VStack {
                                Image(systemName: "ellipsis.bubble.fill")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                .foregroundColor(.white)
                                Text("120")
                                    .foregroundColor(.white)
                            }
                        }
                        Button {
                            
                        } label: {
                            VStack {
                                Image(systemName: "bookmark.fill")
                                    .resizable()
                                    .frame(width: 20, height: 28)
                                .foregroundColor(.white)
                                Text("3456")
                                    .foregroundColor(.white)
                            }
                        }
                        Button {
                            
                        } label: {
                            Image(systemName: "arrowshape.turn.up.right.fill")
                                .resizable()
                                .frame(width: 28, height: 28)
                                .foregroundColor(.white)
                        }
                        
                    }
    
                }
                .padding(.bottom, 78)
            }
            .padding()
        }
        .onTapGesture {
            switch player.timeControlStatus {
            case .paused:
                player.play()
            case .waitingToPlayAtSpecifiedRate:
                break
            case .playing:
                player.pause()
            @unknown default:
                break
            }
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell(post: Post(id: NSUUID().uuidString, videoURL: ""), player: AVPlayer())
    }
}
