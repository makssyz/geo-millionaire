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
    var country: String
    var longitude: Float
    var latitude: Float
}

var countries = [
    "Germany"
]

var locations = [
    Location(name: "Potsdam", country: countries[0], longitude: 52.3996937, latitude: 13.0483718)
]
