//
//  AppDelegate.swift
//  GeoMillionaire
//
//  Created by Makss Golubs on 01.06.21.
//

class AppDelegate: NSObject, UIApplicationDelegate    {
     func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
         GMSServices.provideAPIKey("AIzaSyC0XkplAMSBVW8QN1ooKbbW--puzjlK4So")
         return true
     }
 }
