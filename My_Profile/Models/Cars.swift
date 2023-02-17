//
//  Cars.swift
//  My_Profile
//
//  Created by Jacob Lavenant on 2/4/23.
//

import Foundation
import SwiftUI
import CoreLocation

struct Cars: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var manufacture: String
    var MSRP: String
    var Engine: String
    var hp: String
    var torque: String
    var trans: String
    var engineFamily: String
    var displacement: String
    var Aspiration: String
    var valve: String
    var powertrain: String
    var transManufacture: String
    var trannyName: String
    var driveType: String
    var gearing: String
    var transConfig: String
    var isFavorite: Bool
    var isFeatured: Bool
    
    var category: Category
    
    enum Category: String, CaseIterable, Codable {
        case supir = "Super"
        case sport = "Sports"
        case muscle = "Muscle"
        case truck = "Truck"
    }

    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    //engine specs
    private var engineImage: String
    var Engineimage: Image {
        Image(engineImage)
    }

    
    //trans specs
    private var transImage: String
    var TransImage: Image {
        Image(transImage)
    }
}
