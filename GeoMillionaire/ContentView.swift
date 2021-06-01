//
//  ContentView.swift
//  GeoMillionaire
//
//  Created by Makss Golubs on 31.05.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        GoogleMapsView()
//            .edgesIgnoringSafeArea(.all)
        GoogleStreetView()
            .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}