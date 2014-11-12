//
//  ViewController.swift
//  MapIt2
//
//  Created by Amy Schmidt on 11/11/14.
//  Copyright (c) 2014 Amy Schmidt. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //getting to appDelegate from ViewController
        let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate

        //getMapData returns mapData from appDelegate
        let mapData = appDelegate.getMapData()
        
        var homeLatitude: CLLocationDegrees = 38.950910
        var homeLongitude: CLLocationDegrees = -92.326801
        
        var span:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta:mapData.latDelta, longitudeDelta:mapData.lonDelta)
        var location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(mapData.latitude, mapData.longitude)
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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

