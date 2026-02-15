//
//  ContentView.swift
//  imageList
//
//  Created by Togrul Hashimov on 15.02.26.
//

import SwiftUI

struct ContentView: View {
    
    var restaurants = [
        Restaurant(image: "res4", title: "CoffeeShop", type: .Pub, location: "Baku"),
        Restaurant(image: "res2", title: "Lounge", type: .Cafe, location: "Istanbul"),
        Restaurant(image: "res3", title: "Olympus", type: .Restaurant, location: "Athena"),
    ]
    var body: some View {
        List {
            ForEach(restaurants) { list in
                VStack(alignment: .leading, spacing: 10) {
                    Image(list.image)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 200)
                        .cornerRadius(20)
                        .shadow(radius: 10)
                    
                    VStack(alignment: .leading) {
                        Text(list.title)
                            .font(.system(.title2, design: .rounded))
                        Text(list.type.rawValue)
                            .font(.system(.headline, design: .rounded))
                        Text(list.location)
                            .font(.system(.subheadline, design: .rounded))
                            .foregroundStyle(.gray)
                    } .padding(.horizontal)
                       
                }
            } .listRowSeparator(.hidden)
        } .listStyle(.plain)
    }
}

#Preview {
    ContentView()
}
