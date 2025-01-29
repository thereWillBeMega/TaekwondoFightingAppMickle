//
//  MapViewControlerViewController.swift
//  TaekwondoFightingAppMickle
//
//  Created by PETER MICKLE on 1/28/25.
//

import UIKit
import MapKit

class ViewControllerMapPls: UIViewController, CLLocationManagerDelegate {

    
        
    @IBOutlet weak var MapOutlet2: MKMapView!
    
    
    
    var locater = CLLocationManager()
    var currentLocation = CLLocation()
    var taekwondos: [MKMapItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        locater.requestWhenInUseAuthorization()
        MapOutlet2.showsUserLocation = true
        //connects delegate
        locater.delegate = self
        //sets the accuracy
        locater.desiredAccuracy = kCLLocationAccuracyBest
        //updates location
        locater.startUpdatingLocation()
        
        let center2 = locater.location!.coordinate
        let reigon = MKCoordinateRegion(center: center2, latitudinalMeters: 5000, longitudinalMeters: 5000)
        
        MapOutlet2.setRegion(reigon, animated: true)
        
        
       
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        currentLocation = locations[0]
    }
    
    
    
    
    
    @IBAction func searchAction(_ sender: UIButton) {
        let request = MKLocalSearch.Request()
            request.naturalLanguageQuery = "Taekwondo"
            let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
            request.region = MKCoordinateRegion(center: currentLocation.coordinate, span: span)
            
            let search = MKLocalSearch(request: request)
            
            search.start { (responce, error) in
                guard let responce = responce
                else{return}
                for mapItem in  responce.mapItems{
                    self.taekwondos.append(mapItem)
                    let annotation = MKPointAnnotation()
                    annotation.coordinate = mapItem.placemark.coordinate
                    annotation.title = mapItem.name
                    self.MapOutlet2.addAnnotation(annotation)
                }
    }
   
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
