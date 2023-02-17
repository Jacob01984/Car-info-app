//
//  ButtonBar.swift
//  My_Profile
//
//  Created by Jacob Lavenant on 2/15/23.
//

import SwiftUI

struct ButtonBar: View {
    var body: some View {
        HStack{
            NavigationLink(destination: CarList()) {
                Button(action: {print("hi")}){                        //fix this
                    Image(systemName: "house")
                        .foregroundColor(.primary)
            }
            }
        Spacer()
            Button {
                print("Pressed")
            } label: {
                Image(systemName: "star")
                    .foregroundColor(.primary)
            }
        Spacer()
            Button {
                print("Pressed")
            } label: {
                Image(systemName: "car")
                    .foregroundColor(.primary)
            }
        Spacer()
            Button {
                print("Pressed")
            } label: {
                Image(systemName: "gearshape")
                    .foregroundColor(.primary)
            }
        }
        .frame(width: 350, height: 50)
    }
}

struct ButtonBar_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBar()
    }
}
