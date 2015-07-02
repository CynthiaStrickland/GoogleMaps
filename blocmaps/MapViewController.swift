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
                
                var camera = GMSCameraPosition.cameraWithLatitude(47.62,
                    longitude: -122.35, zoom: 15)
                var mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
                mapView.myLocationEnabled = true
                self.view = mapView
                
                var marker = GMSMarker()
                marker.position = CLLocationCoordinate2DMake(47.62, -122.35)
                marker.title = "Seattle Center"
                marker.snippet = "Seattle, WA"
                marker.map = mapView
            }
        }


