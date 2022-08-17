//
//  MapViewController.swift
//  connectGEN
//
//  Created by scholar on 8/15/22.
//

import UIKit
import MapKit
import CoreLocation




func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
    guard annotation is MKPointAnnotation else { return nil }

    let identifier = "Annotation"
    var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)

    if annotationView == nil {
        annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
        annotationView!.canShowCallout = true
    } else {
        annotationView!.annotation = annotation
    }

    return annotationView
}
class MapViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!

    @IBOutlet weak var locationLabel: UILabel!
    
    @IBOutlet weak var locationInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let initialLocation = CLLocation(latitude: 39.954835, longitude: -75.178234)
        mapView.centerToLocation(initialLocation)
        let marketStreet = MKPointAnnotation()
        marketStreet.title = "3675 Market Street"
        marketStreet.coordinate = CLLocationCoordinate2D(latitude: 39.954835, longitude: -75.178234)
        mapView.addAnnotation(marketStreet)
        let nursingHome1 = MKPointAnnotation()
        nursingHome1.title = "University City Rehab & Healthcare Center"
        nursingHome1.coordinate = CLLocationCoordinate2D(latitude:39.954730, longitude: -75.194610)
        mapView.addAnnotation(nursingHome1)

        
        
        var geocoder = CLGeocoder()
        geocoder.geocodeAddressString("your address") {
            placemarks, error in
            let placemark = placemarks?.first
            let lat = placemark?.location?.coordinate.latitude
            let lon = placemark?.location?.coordinate.longitude
            print((lat), (lon))
        }
            // Use your location
    }

    @IBAction func submitTapped(_ sender: UIButton) {
        if locationInput.text == "3675 Market St" {
            locationLabel.text = "Your nearest location is: 3675 Market St "
        }
        
    }
    
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



private extension MKMapView {
  func centerToLocation(
    _ location: CLLocation,
    regionRadius: CLLocationDistance = 1000
  ) {
    let coordinateRegion = MKCoordinateRegion(
      center: location.coordinate,
      latitudinalMeters: regionRadius,
      longitudinalMeters: regionRadius)
    setRegion(coordinateRegion, animated: true)
  }
}
