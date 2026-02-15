//
//  model.swift
//  imageList
//
//  Created by Togrul Hashimov on 15.02.26.
//

import Foundation

struct Restaurant : Identifiable {
    var id = UUID()
    var image : String
    var title : String
    var type : ResType
    var location: String
    
}

enum ResType: String {
    case Pub = "Pub";
    case Restaurant = "Restaurant";
    case Cafe = "Cafe";
}
