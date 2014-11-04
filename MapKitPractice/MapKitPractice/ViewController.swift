//
//  ViewController.swift
//  MapKitPractice
//
//  Created by Amy Schmidt on 11/4/14.
//  Copyright (c) 2014 Amy Schmidt. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mapView: MKMapView!
    
    var latitude:CLLocationDegrees = 38.944443
    var longitude:CLLocationDegrees = -92.329733
    var latDelta:CLLocationDegrees = 0.03
    var lonDelta:CLLocationDegrees = 0.03
    
    var homeLatitude: CLLocationDegrees = 38.950910
    var homeLongitude: CLLocationDegrees = -92.326801
    
    
   /* var mapAnnotation = MKPointAnnotation()
    
    
    self.theMapView.addAnnotation(myHomePin)*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var span:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta:latDelta, longitudeDelta:lonDelta)
        var location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        var region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        mapView.setRegion(region, animated:true)

        var myHome:CLLocationCoordinate2D = CLLocationCoordinate2DMake(homeLatitude, homeLongitude)

        var mapAnnotation = MKPointAnnotation()
        mapAnnotation.coordinate = myHome
        mapAnnotation.title = "Home"
        mapAnnotation.subtitle = "Amy's Apartment"
        
        self.mapView.addAnnotation(mapAnnotation)

        // Do any additional setup after loading the view, typically from a nib.
    }

    


}

