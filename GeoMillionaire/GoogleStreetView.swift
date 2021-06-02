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

struct OverlayedGoogleStreetView: View {
    @State private var streetView = GoogleStreetView()
    @Binding var viewState: String
    @Binding var stakeNumber: Int
    @State var timeRemaining: Int = 120
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        ZStack {
            streetView
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
        OverlayedGoogleStreetView(viewState: .constant("streetview"), stakeNumber: .constant(0))
    }
}
