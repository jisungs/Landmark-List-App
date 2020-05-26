//
//  LandmarkList.swift
//  Landmark List App
//
//  Created by The book Air on 2020/05/26.
//  Copyright © 2020 The book Air. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark:Landmark
    var body: some View {
        HStack {
            Image(landmark.thumbnailName).cornerRadius(8)
            VStack(alignment: .leading) {
              Text(landmark.title).bold()
              Text(landmark.country).foregroundColor(.gray)
             }
            Spacer()
            Image(landmark.flagName)
        }
    }
}

struct LandmarkList: View {
    var landmarks = CategoriesData
    
    var body: some View {
        NavigationView{
            List(){
                       ForEach(CategoriesData){ category in
                           Section(header: Text(category.title)){
                               ForEach(category.landmarks) { landmark in
                                   LandmarkRow(landmark: landmark)
                                   
                               }
                           }
                       }
                       
            }.navigationBarTitle(Text("Landmark"))
        }
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList(landmarks: CategoriesData)
    }
}
