//
//  TransImage.swift
//  My_Profile
//
//  Created by Jacob Lavenant on 2/5/23.
//

 import SwiftUI

 struct TransImage: View {
     var transImage: Image
     
     var body: some View {
         transImage
             .resizable()
             .overlay {
                 Rectangle().stroke(.gray, lineWidth: 8)
             }
             .shadow(radius: 7)
             .scaledToFit()
     }
 }

 struct TransImage_Previews: PreviewProvider {
     static var previews: some View {
         TransImage(transImage: Image("s4_trans"))
     }
 }


