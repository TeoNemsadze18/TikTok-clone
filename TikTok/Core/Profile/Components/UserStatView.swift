//
//  UserStatView.swift
//  TikTok
//
//  Created by teona nemsadze on 14.02.24.
//

import SwiftUI

struct UserStatView: View {
    let value: Int
    let title: String
    var body: some View {
        VStack {
            Text("\(value)") 
                .font(.subheadline)
                .fontWeight(.bold)
            
            Text(title)
                .font(.caption)
                .foregroundStyle(.gray)
        }
        .frame(width: 80, alignment: .center)
    }
}


struct UserStatView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatView(value: 10, title: "followers")
    }
}
