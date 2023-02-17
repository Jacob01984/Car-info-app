//
//  My_ProfileApp.swift
//  My_Profile
//
//  Created by Jacob Lavenant on 2/3/23.
//

import SwiftUI

@main
struct My_ProfileApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
