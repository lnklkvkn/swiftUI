//
//  HelloView.swift
//  SwiftUIEducation
//
//  Created by ln on 11.07.2023.
//

import SwiftUI

struct QuotesView: View {
    
    @State private var scale = 1.0
    @State private var showDetails = false
    @State private var post: Post?
    private var randomQuote: String {
        post?.quotes.randomElement() ?? ""
    }
    @State private var screenWidth = UIScreen.main.bounds.size.width - 20
    
    var body: some View {
        
        NavigationView {
            ScrollView(.horizontal) {
                HStack {
                    ForEach(0...5, id: \.self) { index in
                        VStack {
                            data[index].image
                                .resizable()
                                .scaledToFill()
                                .clipShape(Circle())
                                .frame(width: 200, height: 200)
                                .cornerRadius(100)
                                .shadow(color: .white, radius: 15)
                                .padding(.top, 30)
                                .padding(.leading, 12)
                                .padding(.bottom, 10)
                                .onTapGesture {
                                    post = data[index]
                                    withAnimation {
                                        showDetails.toggle()
                                    }
                                }
                            Text(data[index].title)
                        }
                    }
                }
            }
            .overlay {
                if showDetails {
                    withAnimation {
                        post?.image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .colorMultiply(Color(white: 0.2))
                            .overlay {
                                Text(randomQuote)
                                    .frame(width: screenWidth)
                                    .foregroundColor(.white)
                            }
                            .onTapGesture {
                                withAnimation {
                                    showDetails.toggle()
                                    
                                }
                            }
                    }
                }
            }
            .navigationTitle("Цитаты")
        }
    }
}


struct QuotesView_Previews: PreviewProvider {
    static var previews: some View {
        QuotesView()
    }
}
