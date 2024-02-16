//
//  CurrentUserProfile.swift
//  TikTok
//
//  Created by teona nemsadze on 13.02.24.
//

import SwiftUI

struct CurrentUserProfile: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack (spacing: 2) {
                   
                    ProfileHeaderView()
                   
                    PostGridView() 
                }
                .padding(.top)
            }
            .navigationTitle("profile")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct CurrentUserProfile_Previews: PreviewProvider {
    static var previews: some View {
        CurrentUserProfile()
    }
}
