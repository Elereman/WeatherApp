//
//  ContentView.swift
//  WeatherApp
//
//  Created by Вадим Близнюк on 28.12.2021.
//

import SwiftUI
import CoreLocation

struct ContentView: View {
    @StateObject var locationManager: LocationManager = LocationManager()
    
    var body: some View {
        VStack {
            
            if let location: CLLocationCoordinate2D = locationManager.location {
                Text("Coordinates: \(location.longitude), \(location.latitude)")
            } else {
                if locationManager.isLoading {
                    LoadingView()
                } else {
                    WelcomeView().environmentObject(locationManager)
                }
            }
        }
        .background(Color(hue: 0.693, saturation: 1.0, brightness: 0.62))
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
