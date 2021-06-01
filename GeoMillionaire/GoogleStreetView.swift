//
//  GoogleMapsView.swift
//  GeoMillionaire
//
//  Created by Makss Golubs on 01.06.21.
//

import SwiftUI
import GoogleMaps

struct GoogleStreetView: UIViewRepresentable {

    func makeUIView(context: Context) -> GMSPanoramaView {
        let panoView = GMSPanoramaView(frame: .zero)
        panoView.moveNearCoordinate(CLLocationCoordinate2D(latitude: 52.3996937, longitude: 13.0483718))
   
        return panoView
    }
    
    func updateUIView(_ uiView: GMSPanoramaView, context: Context) {
        
    }
}

struct GoogleStreetView_Previews: PreviewProvider {
    static var previews: some View {
        GoogleStreetView()
    }
}
