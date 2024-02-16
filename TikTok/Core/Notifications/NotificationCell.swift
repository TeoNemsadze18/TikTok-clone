//
//  NotificationCell.swift
//  TikTok
//
//  Created by teona nemsadze on 13.02.24.
//

import SwiftUI

struct NotificationCell: View {
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundColor(.green)
            
            HStack {
                Text("Mick.Versa")
                    .font(.footnote)
                    .fontWeight(.semibold) +
                
                Text(" Liked one of your video ")
                    .font(.footnote)
                
                Text("2h")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            Spacer()
            Rectangle()
                .frame(width: 48, height: 48)
                .clipShape(RoundedRectangle(cornerRadius: 8))
        }
        .padding(.horizontal)
    }
}

struct NotificationCell_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCell()
    }
}
