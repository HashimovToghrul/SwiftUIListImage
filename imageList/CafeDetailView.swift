//
//  CadeDetailView.swift
//  imageList
//
//  Created by Togrul Hashimov on 22.02.26.
//

import SwiftUI

struct CafeDetailView: View {
  @Binding var cafeDetails : CafeModel
   
    
    private let imageHeight: CGFloat = 380
    var body: some View {
        
            VStack(spacing: 0) {
                ZStack(alignment: .bottomLeading) {
                    
                    Image("cafe1")
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: 410)
                          .frame(height: imageHeight)
                        .clipped()
                    
                    VStack(alignment:.leading, spacing: 8) {
                        Text(cafeDetails.title)
                            .font(.system(.largeTitle, weight: .bold))
                        Text(cafeDetails.type.rawValue)
                            .font(.system(.title, weight: .bold))
                            .padding(.horizontal, 12)
                            .padding(.vertical, 6)
                            .background(.black.opacity(0.6))
                            .clipShape(.capsule)
                          
                    }
                    .foregroundStyle(.white)
                    .padding()
                    
                    VStack {
                        HStack{
                            Spacer()
                            
                            Button {
                                cafeDetails.isFavorite.toggle()
                            } label: {
                                Image(systemName: cafeDetails.isFavorite ? "heart.fill" : "heart")
                                .font(.title2)
                                .foregroundStyle(.white)
                                .padding(.top, 40)
                                .padding(.trailing,20)
                            }
                                
                           
                        }
                      
                        Spacer()
                    }
                    .frame(height: imageHeight)
                    
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
                
            }
            .ignoresSafeArea(edges: .top)
        
        
    }
}
        struct CafeDetailView_Previews: PreviewProvider {
            static var previews: some View {
                CafeDetailView(cafeDetails: .constant(CafeModel(image: "cafe1", title: "Cafe Daedend", type: .Pub, location: "aa", isFavorite: false, cafeDescription: "Searching for great breakfast eaters and coffe? This place is for you. We open at 6:30 every morning and close at 10:00 every evening. We have a great selection of breakfast options to suit all tastes. From classic pancakes and waffles to gourmet options like smoked salmon and avocado toast, we have something for everyone", cafeAddress: "baki ahmadli sabuncu bakixanov razin sulh kucesi", cafePhone: "0554321821")))
                
                CafeDetailView(cafeDetails: .constant(CafeModel(image: "cafe1", title: "Cafe Daedend", type: .Pub, location: "aa", isFavorite: false, cafeDescription: "", cafeAddress: "", cafePhone: "")))
                    .preferredColorScheme(.dark)
            }
        }
        
    

