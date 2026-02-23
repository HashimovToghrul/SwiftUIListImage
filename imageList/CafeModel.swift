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
}

enum CafeType : String {
    case Pub = "Pub"
    case Bar = "Bar"
    case Restaurant = "Restaurant"
}
