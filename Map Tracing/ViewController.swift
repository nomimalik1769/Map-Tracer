//
//  ViewController.swift
//  Map Tracing
//
//  Created by NomiMalik on 16/10/2017.
//  Copyright © 2017 Globia Technologies. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var maptreace: MKMapView!
    
//augusta ME lat= 44.33106 long = 69.7795
//concord NH lat= 43.2081 long = 71.5376
//bostan MA lat = 42.3601 long = 71.0589
//Providence RI lat = 41/8240 long=71.4128
//hartford CT lat = 41.7637 long = 72.6851
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let latitude: CLLocationDegrees = 44.33106
        let longitude: CLLocationDegrees = -69.7795
        let latdelta: CLLocationDegrees = 0.05
        let longdelta: CLLocationDegrees = 0.05
        
        let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latdelta,longitudeDelta: longdelta)
        let location: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude,longitude: longitude)
        
        let region:MKCoordinateRegion = MKCoordinateRegion(center: location,span: span)
        
        maptreace.setRegion(region, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

