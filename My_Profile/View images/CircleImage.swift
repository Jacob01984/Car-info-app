//
//  CircleImage.swift
//  My_Profile
//
//  Created by Jacob Lavenant on 2/4/23.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image
            .resizable()
            .overlay {
                Rectangle().stroke(.gray, lineWidth: 8)
            }
            .shadow(radius: 7)
            .scaledToFit()
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("s4"))
    }
}
