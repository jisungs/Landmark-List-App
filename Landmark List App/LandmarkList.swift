//
//  LandmarkList.swift
//  Landmark List App
//
//  Created by The book Air on 2020/05/26.
//  Copyright © 2020 The book Air. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var landmarks = landmarksData
    
    var body: some View {
        List(landmarks){ landmark in
            HStack {
                Image(landmark.thumbnailName).cornerRadius(8)
                VStack(alignment: .leading){
                    Text(landmark.title).bold()
                    Text(landmark.country).foregroundColor(.gray)
                }
                Spacer()
                Image(landmark.flagName)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList(landmarks: landmarksData)
    }
}
