//
//  Landmark.swift
//  MyRealm
//
//  Created by Jaden Nation on 5/28/23.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    private var coordinates: Coordinates
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var locationCoordinate: CLLocationCoordinate2D {
            CLLocationCoordinate2D(
                latitude: coordinates.latitude,
                longitude: coordinates.longitude)
        }
    
    
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
