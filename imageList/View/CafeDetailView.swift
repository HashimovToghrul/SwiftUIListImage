//
//  CadeDetailView.swift
//  imageList
//
//  Created by Togrul Hashimov on 22.02.26.
//

import SwiftUI

struct CafeDetailView: View {
    @Binding var cafeDetails : CafeModel
    @Environment(\.dismiss) var dismiss
    
    private let imageHeight: CGFloat = 380
    var body: some View {
        
            VStack(spacing: 0) {
                ZStack {
                    
                    Image("cafe1")
                        .resizable()
                        .scaledToFill()
                        .frame(minWidth: 0 ,maxWidth: .infinity)
                        .frame(height: imageHeight)
                        .clipped()
                    VStack {
                        Button {
                                cafeDetails.isFavorite.toggle()
                                } label: {
                                Image(systemName: cafeDetails.isFavorite ? "heart.fill" : "heart")
                                .font(.title)
                                .foregroundStyle(.white)
                                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topTrailing)
                                .padding()
                                .padding(.top, 40)
                                }
                                                        
                        VStack(alignment:.leading, spacing: 5) {
                            Text(cafeDetails.title)
                            //  .font(.system(.largeTitle, weight: .bold))
                                .font(.custom("Pacifico-Regular", size: 40))
                            Text(cafeDetails.type.rawValue)
                                .font(.system(.title2, weight: .bold))
                                .padding(.horizontal, 12)
                                .padding(.vertical, 6)
                                .background(.black.opacity(0.6))
                                .cornerRadius(20)
                            
                        }
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .bottomLeading)
                        .foregroundStyle(.white)
                        .padding()
                        
                    }
                    
                }
                .frame(height: imageHeight)
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 10){
                        Text(cafeDetails.cafeDescription)
                            .padding(.bottom)
                   
                        HStack(alignment: .top, spacing: 40) {
                            VStack(alignment: .leading, spacing: 6){
                                Text("Address")
                                    .font(.system(.title2,weight: .bold))
                                Text(cafeDetails.cafeAddress)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                           
                            VStack(alignment: .leading, spacing: 6){
                                Text("Phone")
                                    .font(.system(.title2,weight: .bold))
                                Text(cafeDetails.cafePhone)
                            }
                        }
                    }.foregroundStyle(.white)
                }
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.black)
                
            } .ignoresSafeArea(edges: .top)
        
        // CustomBackButton
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .topBarLeading ) {
                    Button {
                        dismiss()
                    } label: {
                        HStack {
                            Image(systemName: "chevron.left" )
                            Text("Geriye")
                        }
                    }
                }
            }
    }
}
        struct CafeDetailView_Previews: PreviewProvider {
            static var previews: some View {
                CafeDetailView(cafeDetails: .constant(cafeFirst))
                
                CafeDetailView(cafeDetails: .constant(cafeFirst))
                    .preferredColorScheme(.dark)
            }
        }
        
    

