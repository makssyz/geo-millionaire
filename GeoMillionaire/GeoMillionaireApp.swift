//
//  GeoMillionaireApp.swift
//  GeoMillionaire
//
//  Created by Makss Golubs on 31.05.21.
//

import SwiftUI
import GoogleMaps


let APIKey = "AIzaSyC0XkplAMSBVW8QN1ooKbbW--puzjlK4So"


@main
struct GeoMillionaireApp: App {
    
    class AppDelegate: NSObject, UIApplicationDelegate    {
        func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
            GMSServices.provideAPIKey(APIKey)
            return true
        }
    }
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
