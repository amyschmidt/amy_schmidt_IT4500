//
//  MapData.swift
//  MapIt2
//
//  Created by Amy Schmidt on 11/11/14.
//  Copyright (c) 2014 Amy Schmidt. All rights reserved.
//

import UIKit
import MapKit

//holds Data for Map
class MapData: NSObject {
    
    //initial position, span
    var latitude:CLLocationDegrees = 38.944443
    var longitude:CLLocationDegrees = -92.329733
    var latDelta:CLLocationDegrees = 0.03
    var lonDelta:CLLocationDegrees = 0.03
    
    //Array to hold Lat
    var latitudeArray:[CLLocationDegrees]
    
    //Array to hold Long
    var longitudeArray:[CLLocationDegrees]
    
    var titleArray:[String]
    
    var subtitleArray:[String]
    
    //init func -> create latitude array, longitude array, location array with (lat,lon), span array, and region array, call super.init()
    override init()
    {
        self.latitudeArray = [38.950910, 38.952865, 38.957241, 38.950854, 38.950101, 38.950605, 38.954076]
        self.longitudeArray = [-92.32680, -92.325842, -92.322473, -92.325388, -92.335135, -92.327139, -92.326109]
        
        self.titleArray = ["Home", "Fretboard Coffee", "Logboat Brewing", "Ragtag Cinema/Uprise Bakery", "Lucky's Market", "Pizza Tree", "Cafe Berlin"]
        self.subtitleArray = ["Amy's Apartment", "Amy's Favorite Coffee Shop", "Amy's Favorite Taproom", "Amy's Favorite Cinema and Bar", "Amy's Favorite Shopping Market", "Amy's Favorite Pizza", "Amy's Favorite Brunch"]
    }
    
   
    
}
