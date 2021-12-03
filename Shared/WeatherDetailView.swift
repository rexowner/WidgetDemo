//
//  WeatherDetailView.swift
//  WidgetDemo
//
//  CIS 137
//  Homework #16
//  Les Poltrack
//  Decembet 2, 2021.
//

import SwiftUI

struct WeatherDetailView: View {
    var name: String
    var icon: String
    
    var body: some View {
        VStack {
            Image(systemName: icon)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text(name)
                .padding()
                .font(.title)
            Text("If this were a real weather app, a description of \(name) would appear here.")
                .padding()
            Spacer()
        }
    }
}

struct WeatherDetailView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherDetailView(name: "Thunder Storms", icon: "cloud.bolt")
    }
}

