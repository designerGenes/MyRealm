//
//  LandmarkRow.swift
//  MyRealm
//
//  Created by Jaden Nation on 5/28/23.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarks[1])
            LandmarkRow(landmark: landmarks[2])
                
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
