//
//  CarRow.swift
//  My_Profile
//
//  Created by Jacob Lavenant on 2/4/23.
//

import SwiftUI

struct CarRow: View {
    var cars: Cars

    var body: some View {
        HStack {
            cars.image
                .resizable()
                .scaledToFit()
                .frame(width: 90, height: 75)
                //.offset(x: 6)
            VStack(alignment: .leading) {
                Text(cars.name)
                    .font(.title)
                Text(cars.manufacture)
            }
            Spacer()
            
            if cars.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct CarRow_Previews: PreviewProvider {
    static var cars = ModelData().cars
    
    static var previews: some View {
        Group {
            CarRow(cars: cars[0])
            CarRow(cars: cars[1])
        //    CarRow(cars: cars[2])
        }
        .previewLayout(.fixed(width: 300, height: 150))
    }
}
