//
//  ContentView.swift
//  imageList
//
//  Created by Togrul Hashimov on 15.02.26.
//

import SwiftUI

struct CafeListView: View {
    
  @State var restaurants = [cafeFirst, cafeSecond, cafeThird]
    
    var body: some View {
        NavigationStack {
            List {
                
                ForEach($restaurants) { $cafe in
                    NavigationLink(destination: CafeDetailView(cafeDetails: $cafe)) {
                        CafeView(cafe: $cafe)
                         
                    }
                    .buttonStyle(.plain)
                  
            
                    
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
