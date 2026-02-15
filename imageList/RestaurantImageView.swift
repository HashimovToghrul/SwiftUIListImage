//
//  View.swift
//  imageList
//
//  Created by Togrul Hashimov on 15.02.26.
//


import SwiftUI


struct ImageView: View {
    @State private var showOptions : Bool = false
    @State private var showError : Bool = false
    var image : String
    var title : String
    var type : ResType
    var location: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(self.image)
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                .cornerRadius(20)
                .shadow(radius: 10)
            
            VStack(alignment: .leading) {
                Text(self.title)
                    .font(.system(.title2, design: .rounded))
                Text(self.type.rawValue)
                    .font(.system(.headline, design: .rounded))
                Text(self.location)
                    .font(.system(.subheadline, design: .rounded))
                    .foregroundStyle(.gray)
            } .padding(.horizontal)
            
        } .onTapGesture {
            showOptions.toggle()
        }
        .confirmationDialog(
            "What do you want",
            isPresented: $showOptions,
            titleVisibility: .visible
        ) {
            Button("Mark as favourite") {
                print("Added to favourites")
            }
            
            Button("Show direction") {
                self.showError.toggle()
            }
        }
        .alert("Error", isPresented: $showError) {
            Button("Ok") {}
            
        } message: {
         Text("Sorry is not possible to show the direction")
        }
    }
    
}
