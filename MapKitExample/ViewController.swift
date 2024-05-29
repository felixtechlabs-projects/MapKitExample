//
//  ViewController.swift
//  MapKitExample
//
//  Created by Sneahaal on 29/05/24.
//

import UIKit
import MapKit

struct Place {
    var lat: Double
    var long: Double
    var name: String
}

class ViewController: UIViewController {

    @IBOutlet weak var myMapView: MKMapView!
    var places: [Place] = [Place(lat: 32.2432, long: 77.1892, name: "Manali"), Place(lat: 30.4547, long: 78.0820, name: "Mussoorie"),
    Place(lat: 50.0755, long: 14.4378, name: "Prague"), Place(lat: 18.5204, long: 73.8567, name: "Pune")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showAnnotations()
    }

    func showAnnotations() {
        for place in places {
            let annotation = MKPointAnnotation()
            annotation.title = place.name
            annotation.coordinate = CLLocationCoordinate2D(latitude: place.lat, longitude: place.long)
            myMapView.addAnnotation(annotation)
        }
    }

}

/**
 core Location -> Device's location
 MapKit -> Map
 
 */
