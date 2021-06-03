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
    var latitude: Double
    var longitude: Double
}

var locations = [
    "Germany": [
        Location(name: "Potsdam", latitude: 52.3996937, longitude: 13.0483718),
        Location(name: "Frankfurt", latitude: 50.1154438, longitude: 8.6715784),
        Location(name: "Nuernberg", latitude: 49.4576396, longitude: 11.0766892)
    ],
    "France": [
        Location(name: "Paris", latitude: 48.8612314, longitude: 2.3350886),
        Location(name: "Nantes", latitude: 47.200582, longitude: -1.5809564),
        Location(name: "Lyon", latitude: 45.7608485, longitude: 4.8264226)
    ],
    "Italy": [
        Location(name: "Rome", latitude: 41.9021939, longitude: 12.4570152),
        Location(name: "Cannizarro", latitude: 37.5394325, longitude: 15.1324622),
        Location(name: "Bari", latitude: 41.1191471, longitude: 16.8927978)
    ],
    "Poland": [
        Location(name: "Warsaw", latitude: 52.2320358, longitude: 21.0073481),
        Location(name: "Gdansk", latitude: 54.351891, longitude: 18.6589403),
        Location(name: "Poznan", latitude: 52.4076552, longitude: 16.9182479)
    ],
    "Turkey": [
        Location(name: "Ankara", latitude: 39.9164256, longitude: 32.8600179),
        Location(name: "Antalya", latitude: 36.8501242, longitude: 30.7822145),
        Location(name: "Istanbul", latitude: 41.008186, longitude: 28.9790341)
    ],
    "Israel": [
        Location(name: "Haifa", latitude: 32.8131032, longitude: 34.9862167),
        Location(name: "Tel Aviv", latitude: 32.0845199, longitude: 34.7680499),
        Location(name: "Be'er Sheva", latitude: 31.2583045, longitude: 34.7947446)
    ],
    "Mexico": [
        Location(name: "Mexico City", latitude: 57.1611411, longitude: -133.3329524),
        Location(name: "Tuxtla Gutiérrez", latitude: 16.798122, longitude: -93.070992),
        Location(name: "Tijuana", latitude: 32.5172053, longitude: -117.010012)
    ],
    "Brazil": [
        Location(name: "Salvador", latitude: -12.9751534, longitude: -38.5144924),
        Location(name: "São Paulo", latitude: -23.547934, longitude: -46.6327084),
        Location(name: "Rio de Janeiro", latitude: -22.8939641, longitude: -43.188256)
    ],
    "Chile": [
        Location(name: "Santiago", latitude: -33.4992025, longitude: -70.6131535),
        Location(name: "La Serena", latitude: -29.9339906, longitude: -71.3358378),
        Location(name: "Luis Soto", latitude: -46.8396877, longitude: -72.6905431)
    ]
]

extension Location {
    static func getRandomCountry() -> String {
        let randomCountry: String = locations.randomElement()!.key
        return randomCountry
    }
    static func getRandomLocationFromCountry(country: String) -> Location {
        let randomLocation = locations[country]!.randomElement()!
        return randomLocation
    }
}
