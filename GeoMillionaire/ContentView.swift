//
//  ContentView.swift
//  GeoMillionaire
//
//  Created by Makss Golubs on 31.05.21.
//

import SwiftUI

struct ContentView: View {
    @State var switchView: String = "streetview"
    @State var currentStake: Int = 0
    @State var currentScore: Int = 0
    var body: some View {
        if self.switchView == "startview" {
            // StartView(viewState: $switchView)
        } else if self.switchView == "streetview" {
            OverlayedGoogleStreetView(viewState: $switchView, stakeNumber: $currentStake)
        } else if self.switchView == "answerview" {
            AnswerView(viewState: $switchView, stakeNumber: $currentStake, scoreNumber: $currentScore)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
