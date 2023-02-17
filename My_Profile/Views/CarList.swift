//
//  CarList.swift
//  My_Profile
//
//  Created by Jacob Lavenant on 2/4/23.
//

import SwiftUI

struct CarList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredCars: [Cars] {
        modelData.cars.filter { cars in
            (!showFavoritesOnly || cars.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView{
            List {

                
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(filteredCars) { cars in
                    NavigationLink{
                        CarDetails(cars: cars)
                    } label: {
                        CarRow(cars: cars)
                    }
                }
            }
            
            //add buttons for my garage, home/featured page, and add cars, and settings
            
            
            .navigationTitle("Cars")
           /* .toolbar {
                        ToolbarItemGroup(placement: .bottomBar) {
                            HStack{
                                Button {
                                    print("Pressed")
                                } label: {
                                    Label("Home", systemImage: "house")
                                        .foregroundColor(.primary)
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
                }
            }
            */
        }
    }
}

struct CarList_Previews: PreviewProvider {
    static var previews: some View {
       // ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self){
           // deviceName in
            CarList()
            .environmentObject(ModelData())
            //    .previewDevice(PreviewDevice(rawValue: deviceName))
             //   .previewDisplayName(deviceName)
       // }
    }
}
