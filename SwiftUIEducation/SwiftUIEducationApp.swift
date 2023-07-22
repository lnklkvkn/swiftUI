//
//  SwiftUIEducationApp.swift
//  SwiftUIEducation
//
//  Created by ln on 10.07.2023.
//

import SwiftUI

@main
struct SwiftUIEducationApp: App {
    
    @State var titleOn: Bool = false
    
    var body: some Scene {
        WindowGroup {
            ContentView(titleOn: titleOn)
                .preferredColorScheme(.dark)
        }
    }
}
