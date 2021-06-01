//
//  GoogleMapsView.swift
//  GeoMillionaire
//
//  Created by Makss Golubs on 01.06.21.
//  Used https://blckbirds.com/post/how-to-use-google-maps-in-swiftui-apps/
//

import SwiftUI
import GoogleMaps

struct GoogleMapsView: UIViewRepresentable {
    func makeUIView(context: Context) -> GMSMapView {
        let camera = GMSCameraPosition.london
        let mapView = GMSMapView(frame: CGRect.zero, camera: camera)
        return mapView
    }
    
    func updateUIView(_ uiView: GMSMapView, context: Context) {
        
    }
}


struct GoogleMapsView_Previews: PreviewProvider {
    static var previews: some View {
        GoogleMapsView()
    }
}



extension GMSCameraPosition  {
    static var london = GMSCameraPosition.camera(withLatitude: 51.507, longitude: 0, zoom: 10)
}
