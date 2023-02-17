//
//  CategoryRow.swift
//  My_Profile
//
//  Created by Jacob Lavenant on 2/15/23.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Cars]
    
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { cars in
                        NavigationLink {
                            CarDetails(cars: cars)
                        } label: {
                            CategoryItem(cars: cars)
                        }
                    }
                }
            }
            .frame(height: 185)
            
        }
        
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var cars = ModelData().cars
    
    static var previews: some View {
        CategoryRow(
            categoryName: cars[0].category.rawValue,
            items: Array(cars.prefix(4))
        )
    }
}
