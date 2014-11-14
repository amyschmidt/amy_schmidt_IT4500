//
//  MapAnnotation.swift
//  MapIt2
//
//  Created by Amy Schmidt on 11/13/14.
//  Copyright (c) 2014 Amy Schmidt. All rights reserved.
//

import UIKit
import MapKit

class MapAnnotation: MKPointAnnotation {
   
    var latitude:CLLocationDegrees = 0.0
    var longitude:CLLocationDegrees = 0.0

    override var coordinate:CLLocationCoordinate2D {
        get {
            let coord = CLLocationCoordinate2DMake(latitude, longitude)
            return coord
        }
        set {
            latitude = newValue.latitude
            longitude = newValue.longitude
        }
    }
    
    
    
}
