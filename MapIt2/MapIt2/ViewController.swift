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
        
        
        var span:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta:mapData.latDelta, longitudeDelta:mapData.lonDelta)
        var centerLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(mapData.latitude, mapData.longitude)
        var region:MKCoordinateRegion = MKCoordinateRegionMake(centerLocation, span)
        
        mapView.setRegion(region, animated:true)
        
        for (var i = 0; i < mapData.longitudeArray.count; i++) {
            
            //coordinates[i] = CLLocationCoordinate2DMake(mapData.latitudeArray[i], mapData.longitudeArray[i])
            
            var annotation = MapAnnotation()
            
            annotation.latitude = mapData.latitudeArray[i]
            annotation.longitude = mapData.longitudeArray[i]
            annotation.title = mapData.titleArray[i]
            annotation.subtitle = mapData.subtitleArray[i]
            
            self.mapView.addAnnotation(annotation)

        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

