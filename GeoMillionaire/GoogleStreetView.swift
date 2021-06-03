//
//  GoogleMapsView.swift
//  GeoMillionaire
//
//  Created by Makss Golubs on 01.06.21.
//

import SwiftUI
import GoogleMaps

struct GoogleStreetView: UIViewRepresentable {
    
    var randomLocation: Location
    
    func makeUIView(context: Context) -> GMSPanoramaView {
        let panoView = GMSPanoramaView(frame: .zero)
        
        print("\(randomLocation.name), \(randomLocation.latitude), \(randomLocation.longitude)")
        
        panoView.moveNearCoordinate(CLLocationCoordinate2D(latitude: randomLocation.latitude, longitude: randomLocation.longitude))
        return panoView
    }
    
    func updateUIView(_ uiView: GMSPanoramaView, context: Context) {
        
    }
}



struct OverlayedGoogleStreetView: View {
    @Binding var viewState: String
    @Binding var stakeNumber: Int
    @Binding var currentLocation: Location
    @State var timeRemaining: Int = 120
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        ZStack {
            GoogleStreetView(randomLocation: currentLocation)
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading) {
                Button(
                    action: {
                        self.stakeNumber = self.timeRemaining
                        self.viewState = "answerview"
                    }
                ) {
                    Text("Make a Guess for \(timeRemaining) 💰")
                        .onReceive(timer) { _ in
                            if timeRemaining > 1 {
                                timeRemaining -= 1
                            }
                        }
                }
                .frame(maxWidth: .infinity, maxHeight: 50, alignment: .center)
                .foregroundColor(.white)
                .background(Color.accentColor)
                .cornerRadius(50)
                .padding(.leading, 50)
                .padding(.trailing, 50)
                Spacer()
            }
        }
        
    }
    
    
}

struct GoogleStreetView_Previews: PreviewProvider {
    static var previews: some View {
        OverlayedGoogleStreetView(viewState: .constant("streetview"), stakeNumber: .constant(0), currentLocation: .constant(Location(name: "Potsdam", latitude: 52.3996937, longitude: 13.0483718)))
    }
}
