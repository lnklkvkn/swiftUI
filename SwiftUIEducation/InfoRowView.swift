//
//  InfoRowView.swift
//  SwiftUIEducation
//
//  Created by ln on 10.07.2023.
//

import SwiftUI

struct InfoRowView: View {
    var post: Post
    
    var body: some View {
        HStack {
            post.image
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 80, height: 80)
//                .padding(.leading, 10)
            
            Text(post.title)
            
            Spacer()
            
        }
    }
}

struct InfoRowView_Previews: PreviewProvider {
    static var previews: some View {
        InfoRowView(post: data[0])
    }
}
