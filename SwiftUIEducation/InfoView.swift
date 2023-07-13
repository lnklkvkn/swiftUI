//
//  InfoView.swift
//  SwiftUIEducation
//
//  Created by ln on 10.07.2023.
//

import SwiftUI

struct InfoView: View {
    var body: some View {

        NavigationView {
            List(data) { post in
                NavigationLink {
                    InfoDetailsView(post: post)
                } label: {
                    InfoRowView(post: post)
                }
            }
            .navigationTitle("Стивен Кинг: лучшее")
            .listStyle(.plain)
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
