//
//  ExploreView.swift
//  TikTok
//
//  Created by teona nemsadze on 13.02.24.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {  
            ScrollView {
                LazyVStack (spacing: 15) {
                    ForEach(0 ..< 20) { user in
                        UserCell()
                    }
                }
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
