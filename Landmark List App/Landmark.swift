//
//  Landmark.swift
//  Landmark List App
//
//  Created by The book Air on 2020/05/26.
//  Copyright © 2020 The book Air. All rights reserved.
//

import SwiftUI

struct Landmark: Identifiable {
    
    var id = UUID()
    var title : String
    var country: String
    var imageName: String{return title}
    var thumbnailName: String{return title + "Thumbnail"}
    var flagName: String {return country}
}


var landmarksData =  [
    Landmark(title: "Isle Of Skye", country: "Switzerland"),
    Landmark(title: "Steinweg", country: "Germany"),
    Landmark(title: "Alpine", country: "Austria"),
    Landmark(title: "Neuschwanstein", country: "Germany"),
    Landmark(title: "Mont St Michel", country: "France")
]

struct Category: Identifiable {
    var id = UUID()
    var title : String
    var landmarks:[Landmark]
}

var CategoriesData =  [
    Category(
        title: "Hill",
        landmarks: [
            Landmark(title: "Isle Of Skye", country: "Switzerland"),
            Landmark(title: "Steinweg", country: "Germany"),
            Landmark(title: "Alpine", country: "Austria")
        ]
    ),
    Category(
        title: "Castle",
        landmarks: [
            Landmark(title: "Neuschwanstein", country: "Germany"),
            Landmark(title: "Mont St Michel", country: "France")
        ]
    )
]
