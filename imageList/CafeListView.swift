//
//  ContentView.swift
//  imageList
//
//  Created by Togrul Hashimov on 15.02.26.
//

import SwiftUI

struct CafeListView: View {
    
  @State var restaurants = [
        CafeModel(image: "cafe1", title: "cafe1", type: CafeType.Bar, location: "Baku",isFavorite: false),
        CafeModel(image: "cafe2", title: "cafe2", type: CafeType.Bar, location: "Quba",isFavorite: false),
        CafeModel(image: "cafe3", title: "cafe3", type: CafeType.Bar, location: "Qax",isFavorite: false),
    ]
    
    var body: some View {
        NavigationStack {
            List {
                
                ForEach($restaurants) { $cafe in
                    NavigationLink(destination: CafeDetailView(cafeDetails: cafe)) {
                        CafeView(cafe: $cafe)
                    }
            
                    
                        .swipeActions(edge: .leading, allowsFullSwipe: false) {
                            Button {
                                //todo
                            } label: {
                                Image(systemName: "square.and.arrow.up")
                                    .tint(.red)
                            }
                            
                            Button {
                                //todo
                            } label: {
                                Image(systemName: "arrow.up.folder.fill")
                            }
                        }
                }
                
                .onDelete { IndexSet in
                    restaurants.remove(atOffsets: IndexSet)
                }
                
            }
            .navigationTitle("aaaaa")
        }
       
        }
    
    }

 // MARK: - Preview

#Preview {
    CafeListView()
}
