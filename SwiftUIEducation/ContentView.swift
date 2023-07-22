//
//  ContentView.swift
//  SwiftUIEducation
//
//  Created by ln on 10.07.2023.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("isTitleOn") var titleOn: Bool = false

    var body: some View {
        
        TabView() {
            
            InfoView(titleOn: titleOn)
                .tabItem {
                    Label("Info", systemImage: "books.vertical.circle")
                }
            
            HelloView()
                .tabItem {
                    Label("Hello", systemImage: "globe")
                }
            
            SettingsView(titleOn: $titleOn)
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
