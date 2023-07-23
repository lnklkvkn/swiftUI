//
//  InfoView.swift
//  SwiftUIEducation
//
//  Created by ln on 10.07.2023.
//

import SwiftUI

struct InfoView: View {
    
    var titleOn: Bool
    
    var body: some View {
        
        
        NavigationView {
            
            List(data) { post in
                NavigationLink {
                    InfoDetailsView(post: post)
                } label: {
                    InfoRowView(post: post)
                }
            }
            
            .listStyle(.plain)
            .navigationTitle(titleOn ? "Стивен Кинг: лучшее" : "")
        }
        
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(titleOn: true)
    }
}
