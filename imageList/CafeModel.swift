//
//  model.swift
//  imageList
//
//  Created by Togrul Hashimov on 15.02.26.
//

import Foundation


struct CafeModel: Identifiable {
    var id = UUID()
    var image : String
    var title : String
    var type  : CafeType
    var location : String
    var isFavorite : Bool
    var cafeDescription : String
    var cafeAddress : String
    var cafePhone : String
}

enum CafeType : String {
    case Pub = "Pub"
    case Bar = "Bar"
    case Restaurant = "Restaurant"
}

var cafeFirst = CafeModel(image: "cafe1", title: "CoffeeShop", type: .Restaurant, location: "Agh Sheher", isFavorite: false, cafeDescription: "Searching for great breakfast eaters and coffe? This place is for you. We open at 6:30 every morning and close at 10:00 every evening. We have a great selection of breakfast options to suit all tastes. From classic pancakes and waffles to gourmet options like smoked salmon and avocado toast, we have something for everyone.Searching for great breakfast eaters and coffe? This place is for you. We open at 6:30 every morning and close at 10:00 every evening. We have a great selection of breakfast options to suit all tastes. From classic pancakes and waffles to gourmet options like smoked salmon and avocado toast, we have something for everyone.Searching for great breakfast eaters and coffe? This place is for you. We open at 6:30 every morning and close at 10:00 every evening. We have a great selection of breakfast options to suit all tastes. From classic pancakes and waffles to gourmet options like smoked salmon and avocado toast, we have something for everyone.Searching for great breakfast eaters and coffe? This place is for you. We open at 6:30 every morning and close at 10:00 every evening. We have a great selection of breakfast options to suit all tastes. From classic pancakes and waffles to gourmet options like smoked salmon and avocado toast, we have something for everyone." , cafeAddress: "Baki şəhəri, Xətai rayonu, Vunq Tau küçəsi 15", cafePhone: "0555554433")

var cafeSecond = CafeModel(image: "cafe2", title: "Bar", type: .Bar, location: "Ahmad Recebli", isFavorite: false, cafeDescription: "Searching for great breakfast eaters and coffe? This place is for you. We open at 6:30 every morning and close at 10:00 every evening. We have a great selection of breakfast options to suit all tastes. From classic pancakes and waffles to gourmet options like smoked salmon and avocado toast, we have something for everyone.", cafeAddress: "Baki şəhəri, Narimanov rayonu, Ahmad Racabli küçəsi 35", cafePhone: "0555554437")

var cafeThird = CafeModel(image: "cafe3", title: "Pub&Lounge", type: .Pub, location: "Nasimi Street", isFavorite: false, cafeDescription: "Searching for great breakfast eaters and coffe? This place is for you. We open at 6:30 every morning and close at 10:00 every evening. We have a great selection of breakfast options to suit all tastes. From classic pancakes and waffles to gourmet options like smoked salmon and avocado toast, we have something for everyone.", cafeAddress: "Baki şəhəri, Nasimi rayonu, Nasimi küçəsi 35", cafePhone: "0557554437")
