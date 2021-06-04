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
        Location(name: "Louvre in Paris", latitude: 48.8612314, longitude: 2.3350886),
        Location(name: "Nantes", latitude: 47.200582, longitude: -1.5809564),
        Location(name: "Lyon", latitude: 45.7608485, longitude: 4.8264226)
    ],
    "Italy": [
        Location(name: "Rome", latitude: 41.9021939, longitude: 12.4570152),
        Location(name: "Cannizarro", latitude: 37.5394325, longitude: 15.1324622),
        Location(name: "Bari", latitude: 41.11832367940213, longitude: 16.89076862093394)
    ],
    "Poland": [
        Location(name: "Warsaw", latitude: 52.2320358, longitude: 21.0073481),
        Location(name: "Gdansk", latitude: 54.351891, longitude: 18.6589403),
        Location(name: "Poznan", latitude: 52.4076552, longitude: 16.9182479)
    ],
    "Turkey": [
        Location(name: "Kocatepe Mosque in Ankara", latitude: 39.91534580273185, longitude: 32.86102565880902),
        Location(name: "Antalya", latitude: 36.8501242, longitude: 30.7822145),
        Location(name: "Istanbul", latitude: 41.008186, longitude: 28.9790341)
    ],
    "Israel": [
        Location(name: "Haifa", latitude: 32.8131032, longitude: 34.9862167),
        Location(name: "Tel Aviv", latitude: 32.0845199, longitude: 34.7680499),
        Location(name: "Be'er Sheva", latitude: 31.2583045, longitude: 34.7947446)
    ],
    "Mexico": [
        Location(name: "Basilica of Our Lady of Guadalupe in Mexico City", latitude: 19.4843189804603, longitude: -99.11644186342421),
        Location(name: "Parque de la Marimba in Tuxtla Gutiérrez", latitude: 16.755491926724943, longitude: -93.123235954295),
        Location(name: "Tijuana", latitude: 32.52078646914219, longitude: -117.01022129542113)
    ],
    "Brazil": [
        Location(name: "Salvador", latitude: -12.975164009481519, longitude: -38.51494045862423),
        Location(name: "Catedral Metropolitana in São Paulo", latitude: -23.550742821701625, longitude: -46.6338945457157),
        Location(name: "Rio de Janeiro", latitude: -22.8939641, longitude: -43.188256)
    ],
    "Chile": [
        Location(name: "Santiago", latitude: -33.4992025, longitude: -70.6131535),
        Location(name: "Coquimbo", latitude: -29.9339906, longitude: -71.3358378),
        Location(name: "Cascada El Maqui", latitude: -46.8397141, longitude: -72.6904202)
    ],
    "Ireland": [
        Location(name: "Galway", latitude: 53.2676577, longitude: -9.0548195),
        Location(name: "Dublin", latitude: 53.3425968320422753, longitude: -6.267052005847347),
        Location(name: "Rock of Cashel", latitude: 52.52021629707909, longitude: -7.890947760919204)
    ],
    "United Kingdom": [
        Location(name: "Stonehenge in Salisbury", latitude: 51.17855446805663, longitude: -1.826996214826352),
        Location(name: "British Museum in London", latitude: 51.51848086057613, longitude: -0.125804404488008),
        Location(name: "Buckingham Palace in London", latitude: 51.5008413, longitude: -0.1429878)
    ],
    "Thailand": [
        Location(name: "Bangkok", latitude: 13.506605, longitude: 100.7083136),
        Location(name: "Chumphon", latitude: 10.4260676, longitude: 99.2236418),
        Location(name: "Phang Nga", latitude: 8.2783874, longitude: 98.3056934)
    ],
    "Australia": [
        Location(name: "Opera House in Sydney", latitude: -33.8586383, longitude: 151.2146836),
        Location(name: "Great Barrier Reef in Cairns", latitude: -15.3367242, longitude: 145.7853488),
        Location(name: "Uluru", latitude: -25.350684, longitude: 131.0463223)
    ],
    "Philippines": [
        Location(name: "Manila", latitude: 14.5479945, longitude: 121.0490142),
        Location(name: "Sentinel of Freedom in Manila", latitude: 14.5840649, longitude: 120.9814614),
        Location(name: "Banaue Rice Terraces in Ifugao", latitude: 16.9239126, longitude: 121.055836)
    ],
    "New Zealand": [
        Location(name: "Christchurch", latitude: -43.5933985, longitude: 172.6779392),
        Location(name: "Auckland", latitude: -36.8999708, longitude: 174.7831822),
        Location(name: "Cape Reinga", latitude: -34.4265432, longitude: 172.6774677)
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
