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
    var body: some View {
        NavigationView {
            List{
                NavigationLink(
                    destination: WeatherDetailView(name: "Haill Storms", icon: "cloud.hail")) {
                    Label("Hail Storm", systemImage: "cloud.hail")
                }
                NavigationLink(
                    destination: WeatherDetailView(name: "Thunder Storms", icon: "cloud.bolt.rain")) {
                    Label("Thunder Storm", systemImage: "cloud.bolt.rain")
                }
                NavigationLink(
                    destination: WeatherDetailView(name: "Tropical Storms", icon: "tropicalstorm")) {
                    Label("Tropical Storm", systemImage: "tropicalstorm")
                }
            }
            .navigationTitle("Severe Weather")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
