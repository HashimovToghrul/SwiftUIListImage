//
//  View.swift
//  imageList
//
//  Created by Togrul Hashimov on 15.02.26.
//


import Foundation
import SwiftUI

struct CafeView : View {
    @State private var showOptions = false
    @State private var showError = false
    
    @Binding var cafe : CafeModel
    
    var body : some View {
        VStack(alignment: .leading , spacing: 10 ) {
            Image(cafe.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: .infinity)
                .frame(height: 200)
                .clipped()
                .cornerRadius(20)
                .shadow(radius: 10)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(cafe.title)
                        .font(.system(.title, design: .rounded))
                    Spacer()
                    if cafe.isFavorite {
                        Image(systemName: "heart.fill")
                            .foregroundStyle(.yellow)
                    } else {
                        Image(systemName: "heart")
                        
                    }
                    
                }
                Text(cafe.type.rawValue)
                    .font(.system(.title2, design: .rounded))
                Text(cafe.location)
                    .font(.system(.title3, design: .rounded))
                    .foregroundStyle(.gray)
            } .padding(.horizontal)
            
                .contextMenu {
                    
                    Button {
                        cafe.isFavorite.toggle()
                    } label: {
                        HStack {
                            Text(cafe.isFavorite ? "Remove favorite" : "Mark as favorite")
                            Image(systemName: "heart")
                        }
                    }
                    
                    Button {
                        
                    }  label: {
                        HStack {
                            Text("Show menu")
                            Image(systemName: "list.bullet")
                        }
                    }
                    
                    
                }
            
            //        }
            //        .onTapGesture {
            //            showOptions.toggle()
            //        }
            //        .confirmationDialog("What doyou want", isPresented: $showOptions, titleVisibility: .visible) {
            //            Button(cafe.isFavorite ? "Remove favorite" : "Mark as favorite") {
            //                    self.cafe.isFavorite.toggle()
            //                }
            //                Button("show menu") {
            //                    showError.toggle()
            //                }
            //
            //        }
            //        .alert("Error", isPresented: $showError) {
            //
            //        } message: {
            //            Text("Sorry")
            //        }
            
        }
    }
}
