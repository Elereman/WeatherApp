//
//  ContentView.swift
//  WeatherApp
//
//  Created by Вадим Близнюк on 28.12.2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager: LocationManager = LocationManager()
    
    var body: some View {
        VStack {
            WelcomeView().environmentObject(locationManager)
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
