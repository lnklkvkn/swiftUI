//
//  ContentView.swift
//  SwiftUIEducation
//
//  Created by ln on 10.07.2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        TabView() {
            
            InfoView()
                .tabItem {
                    Label("Info", systemImage: "books.vertical.circle")
                }
            HelloView()
                .tabItem {
                    Label("Hello", systemImage: "globe")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
