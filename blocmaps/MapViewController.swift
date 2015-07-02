//
//  ViewController.swift
//  blocmaps
//
//  Created by Cynthia Whitlatch on 7/1/15.
//  Copyright (c) 2015 Cynthia Whitlatch. All rights reserved.
//

import UIKit
import GoogleMaps
import CoreLocation


class MapViewController: UIViewController {
        
    override func viewDidLoad() {
                super.viewDidLoad()
                
                var camera = GMSCameraPosition.cameraWithLatitude(-33.86,
                    longitude: 151.20, zoom: 6)
                var mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
                mapView.myLocationEnabled = true
                self.view = mapView
                
                var marker = GMSMarker()
                marker.position = CLLocationCoordinate2DMake(-33.86, 151.20)
                marker.title = "Sydney"
                marker.snippet = "Australia"
                marker.map = mapView
            }
        }


