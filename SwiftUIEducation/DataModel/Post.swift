//
//  Post.swift
//  SwiftUIEducation
//
//  Created by ln on 10.07.2023.
//

import SwiftUI

struct Post: Identifiable {
    let id: Int
    let title: String
    let description: String
    let image: Image
    let quotes: [String]
}
