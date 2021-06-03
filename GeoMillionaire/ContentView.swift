//
//  ContentView.swift
//  GeoMillionaire
//
//  Created by Makss Golubs on 31.05.21.
//

import SwiftUI

struct ContentView: View {
    @State var switchView: String = "startview"
    @State var randomCountry: String = ""
    @State var randomLocation: Location = Location(name: "", latitude: 0, longitude: 0)
    @State var currentStake: Int = 0
    @State var currentScore: Int = 0
    var body: some View {
        if self.switchView == "startview" {
            StartView(viewState: $switchView, currentCountry: $randomCountry, currentLocation: $randomLocation)
        } else if self.switchView == "streetview" {
            OverlayedGoogleStreetView(viewState: $switchView, stakeNumber: $currentStake, currentLocation: $randomLocation)
        } else if self.switchView == "answerview" {
            AnswerView(viewState: $switchView, currentCountry: $randomCountry, currentLocation: $randomLocation, stakeNumber: $currentStake, scoreNumber: $currentScore)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
