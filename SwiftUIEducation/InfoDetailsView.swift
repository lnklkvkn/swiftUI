//
//  InfoDetailsView.swift
//  SwiftUIEducation
//
//  Created by ln on 10.07.2023.
//

import SwiftUI

struct InfoDetailsView: View {
    
    var post: Post
    
    var body: some View {
        
        ScrollView {
            post.image
                .resizable()
                .scaledToFit()
                .padding(.top, 12)
                .shadow(radius: 10)
            
            VStack(alignment: .leading) {
                Text(post.title)
                    .font(.title3).fontWeight(.bold)
                    .foregroundColor(.pink)
                
                Divider()
                
                Text(post.description)
            }
            .padding()
        }
        .navigationTitle(post.title)
    }
}

struct InfoDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        InfoDetailsView(post: data[5])
    }
}
