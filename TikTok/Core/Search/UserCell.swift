//
//  UserCell.swift
//  TikTok
//
//  Created by teona nemsadze on 13.02.24.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack (spacing: 12) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 48, height: 48)
                .foregroundColor(.red)
                
            VStack(alignment: .leading) {
                Text("Iana Innes")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text("Ianikoo")
                    .font(.footnote)
            }
            Spacer()
        }
        .padding(.horizontal)
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
