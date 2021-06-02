//
//  Locations.swift
//  GeoMillionaire
//
//  Created by Makss Golubs on 01.06.21.
//

import Foundation

struct Location: Identifiable {
    var id = UUID()
    var name: String
    var longitude: Float
    var latitude: Float
}


var locations = [
    "Germany": [
        Location(name: "Potsdam", longitude: 52.3996937, latitude: 13.0483718),
        Location(name: "Frankfurt", longitude: 50.1154438, latitude: 8.6715784),
        Location(name: "Nuernberg", longitude: 49.4576396, latitude: 11.0766892)
    ],
    "France": [
        Location(name: "Paris", longitude: 48.8612314, latitude: 2.3350886),
        Location(name: "Nantes", longitude: 47.200582, latitude: -1.5809564),
        Location(name: "Lyon", longitude: 45.7608485, latitude: 4.8264226)
    ],
]
