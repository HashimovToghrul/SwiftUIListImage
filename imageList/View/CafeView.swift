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
    
    @Binding var cafe1 : CafeModel
    
    var body : some View {
        VStack(alignment: .leading , spacing: 10 ) {
            Image(cafe1.image)
                .resizable()
                
                .frame(maxWidth: .infinity)
                .frame(height: 200)
                .clipped()
                .cornerRadius(20)
                .shadow(radius: 10)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(cafe1.title)
                        .font(.system(.largeTitle, design: .rounded))
                    Spacer()
                    if cafe1.isFavorite {
                        Image(systemName: "heart.fill")
                            .foregroundStyle(Color.brand)
                    } else {
                        Image(systemName: "heart")
                        
                    }
                    
                }
                Text(cafe1.type.rawValue)
                    .font(.system(.title2, design: .rounded))
                Text(cafe1.location)
                    .font(.system(.title3, design: .rounded))
                    .foregroundStyle(.gray)
            } .padding(.horizontal)
            
                .contextMenu {
                    
                    Button {
                        cafe1.isFavorite.toggle()
                    } label: {
                        HStack {
                            Text(cafe1.isFavorite ? "Remove favorite" : "Mark as favorite")
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
