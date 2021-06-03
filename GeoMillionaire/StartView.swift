//
//  StartView.swift
//  GeoMillionaire
//
//  Created by Makss Golubs on 02.06.21.
//

import SwiftUI

struct StartView: View {
    @Binding var viewState: String
    @Binding var currentCountry: String
    @Binding var currentLocation: Location
    
    var body: some View {
        ZStack {
            Image("Wimmelbild-Kölln")
            VStack {
                Text("High Score: \(UserDefaults.standard.integer(forKey: "highScore")) 💰")
                    .font(.title)
                    .frame(maxWidth: .infinity, maxHeight: 50, alignment: .center)
                    .foregroundColor(.accentColor)
                    .background(Color.white)
                
                Button (
                    action: {
                        self.currentCountry = Location.getRandomCountry()
                        self.currentLocation = Location.getRandomLocationFromCountry(country: self.currentCountry)
                        self.viewState = "streetview"
                    }
                ) {
                    Text("Start Game")
                }
                .font(.title)
                .frame(maxWidth: .infinity, maxHeight: 50, alignment: .center)
                .foregroundColor(.white)
                .background(Color.accentColor)
            }
            
            
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView(viewState: .constant("startview"), currentCountry: .constant("Germany"), currentLocation: .constant(Location(name: "Potsdam", latitude: 52.3996937, longitude: 13.0483718)))
    }
}
