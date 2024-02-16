//
//  ProfileHeaderView.swift
//  TikTok
//
//  Created by teona nemsadze on 13.02.24.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack (spacing: 15) {
            VStack (spacing: 8) {
                Image("image")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 80, height: 80)
                    .foregroundColor(.green)
                
                Text("Anna Gomez")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
            
            HStack (spacing: 16) {
                UserStatView(value: 10, title: "following")
                UserStatView(value: 235, title: "following")
                UserStatView(value: 250, title: "Likes")
            }
           
            Button {
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .foregroundStyle(.black)
                    .background(Color(.systemGray5))
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            }
            Divider()
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}


