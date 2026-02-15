//
//  ContentView.swift
//  imageList
//
//  Created by Togrul Hashimov on 15.02.26.
//

import SwiftUI

struct ContentView: View {
    
    var restaurants = [
        Restaurant(
            image: "res4",
            title: "CoffeeShop",
            type: .Pub,
            location: "Baku"
        ),
        Restaurant(
            image: "res2",
            title: "Lounge",
            type: .Cafe,
            location: "Istanbul"
        ),
        Restaurant(
            image: "res3",
            title: "Olympus",
            type: .Restaurant,
            location: "Athena"
        ),
    ]
    var body: some View {
        List {
            ForEach(restaurants) { list in
                ImageView(
                    image: list.image,
                    title: list.title,
                    type: list.type,
                    location: list.location
                )
            } .listRowSeparator(.hidden)
        } .listStyle(.plain)
    }
}

#Preview {
    ContentView()
}
