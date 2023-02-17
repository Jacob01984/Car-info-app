//
//  CategoryItem.swift
//  My_Profile
//
//  Created by Jacob Lavenant on 2/15/23.
//

import SwiftUI

struct CategoryItem: View {
    var cars: Cars
    
    var body: some View {
        VStack(alignment: .leading) {
                cars.image
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 200, height: 155)
                    .cornerRadius(5)
                    Text(cars.name)
                        .foregroundColor(.primary)
                        .font(.subheadline)
                }
                .padding(.leading, 15)
            

    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(cars: ModelData().cars[0])
    }
}
