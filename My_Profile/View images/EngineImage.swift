//
//  EngineImage.swift
//  My_Profile
//
//  Created by Jacob Lavenant on 2/5/23.
//

import SwiftUI

struct EngineImage: View {
    var engineImage: Image
    
    var body: some View {
        engineImage
            .resizable()
            .overlay {
                Rectangle().stroke(.gray, lineWidth: 8)
            }
            .shadow(radius: 7)
            .scaledToFit()
    }
}

struct EngineImage_Previews: PreviewProvider {
    static var previews: some View {
        EngineImage(engineImage: Image("s4_engine"))
    }
}




