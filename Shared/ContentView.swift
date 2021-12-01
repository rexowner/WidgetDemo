//
//  ContentView.swift
//  Shared
//
//  CIS 137
//  Homework #15
//  Les Poltrack
//  11/22/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var hailActive: Bool = false
    @State private var thunderActive: Bool = false
    @State private var tropicalActive: Bool = false

    
    var body: some View {
        NavigationView {
            List{
                NavigationLink(
                    destination: WeatherDetailView(name: "Hail Storms", icon: "cloud.hail"),
                    isActive: $hailActive) {
                    Label("Hail Storm", systemImage: "cloud.hail")
                }
                NavigationLink(
                    destination: WeatherDetailView(name: "Thunder Storms", icon: "cloud.bolt.rain"),
                    isActive: $thunderActive) {
                    Label("Thunder Storm", systemImage: "cloud.bolt.rain")
                }
                NavigationLink(
                    destination: WeatherDetailView(name: "Tropical Storms", icon: "tropicalstorm"),
                    isActive: $tropicalActive) {
                    Label("Tropical Storm", systemImage: "tropicalstorm")
                }
            }
            .navigationTitle("Severe Weather")
            .onOpenURL(perform: { (url) in
                self.hailActive = url == hailUrl
                self.thunderActive = url == thunderUrl
                self.tropicalActive = url == tropicalUrl
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
