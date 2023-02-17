//
//  CarDetails.swift
//  My_Profile
//
//  Created by Jacob Lavenant on 2/4/23.
//

import SwiftUI

struct CarDetails: View {
    @EnvironmentObject var modelData: ModelData
    var cars: Cars
    
    var carIndex: Int {
        modelData.cars.firstIndex(where: { $0.id == cars.id })!
    }
    
    var body: some View {
        ScrollView{
           // VStack {
                
             //   VStack(alignment: .center){
               //     CircleImage(image: cars.image)
                       // .offset(y: -10)
                 //       .scaledToFit()
                //}
                HStack {
                    Spacer()
                    VStack(alignment: .leading){
                        Text(cars.name)
                            .font(.largeTitle)
                            .multilineTextAlignment(.trailing)
                            .bold()
                        HStack {
                            Text(cars.manufacture)
                                .font(.title2)
                                .multilineTextAlignment(.trailing)
                            .bold()
                            Spacer()
                            FavoriteButton(isSet: $modelData.cars[carIndex].isFavorite)
                        }
                    }
                    .padding()
                }
                .padding(.trailing, 30)
            Divider()
                .frame(width: 340,height: 4)
                .overlay(.primary)
                
            VStack {
                
                VStack(alignment: .center){
                    CircleImage(image: cars.image)
                       // .offset(y: -10)
                        .scaledToFit()
                }
                
                    VStack{
    
                        HStack{
                            Text("Price:")
                                .font(.title2)
                                .bold()
                            Spacer()
                            Text(cars.MSRP)
                        }
                        Spacer()
                        HStack{
                            Text("Engine:")
                                .font(.title2)
                                .bold()
                            Spacer()
                            Text(cars.Engine)
                        }
                        Spacer()
                        HStack{
                            Text("Horsepower:")
                                .font(.title2)
                                .bold()
                            Spacer()
                            Text(cars.hp)
                        }
                        Spacer()
                        HStack{
                            Text("Torque:")
                                .font(.title2)
                                .bold()
                            Spacer()
                            Text(cars.torque)
                        }
                        Spacer()
                        HStack{
                            Text("Transmission:")
                                .font(.title2)
                                .bold()
                            Spacer()
                            Text(cars.trans)
                        }
                    }
                    .frame(width: 365, height: 200)
                    .padding()
                    .foregroundColor(.primary)
                    .background(Color.secondary
                        .opacity(0.3))
                    .border(.primary, width: 4)
                }
            .padding(.bottom, 20)
            
            
            VStack{
                VStack(alignment: .center){
                    EngineImage(engineImage: cars.Engineimage)
                        .offset(y: -10)
                        .scaledToFit()
                        
                    Text(cars.Engine)
                        .font(.largeTitle)
                        .multilineTextAlignment(.trailing)
                }
                Divider()
                    .frame(width: 340, height: 4)
                    .overlay(.primary)
                
                VStack(alignment: .leading){
                    HStack{
                        Text("Engine Family:")
                            .font(.title2)
                            .bold()
                         Spacer()
                        Text(cars.engineFamily)
                    }
                    Spacer()
                    HStack{
                        Text("Displacement:")
                            .font(.title2)
                            .bold()
                        Spacer()
                        Text(cars.displacement)
                    }
                    Spacer()
                    HStack{
                        Text("Aspiration:")
                            .font(.title2)
                            .bold()
                         Spacer()
                        Text(cars.Aspiration)
                    }
                    Spacer()
                    HStack{
                        Text("Valve Configuation:")
                            .font(.title2)
                            .bold()
                         Spacer()
                        Text(cars.valve)
                    }
                }
                .frame(width: 365, height: 200)
                .padding()
                .foregroundColor(.primary)
                .background(Color.secondary
                    .opacity(0.3))
                .border(.primary, width: 4)
            }
            .padding(.bottom, 45)
            
            
             VStack{
                VStack(alignment: .center){
                    TransImage(transImage: cars.TransImage)
                        .offset(y: -10)
                        .scaledToFit()
                        
                    Text(cars.trans)
                        .font(.largeTitle)
                        .multilineTextAlignment(.trailing)
                }
                Divider()
                     .frame(width: 340, height: 4)
                    .overlay(.primary)
                VStack(alignment: .leading){
                    HStack{
                        Text("Powertrain:")
                            .font(.title2)
                            .bold()
                         Spacer()
                        Text(cars.powertrain)
                    }
                    Spacer()
                    HStack{
                        Text("Manufacture:")
                            .font(.title2)
                            .bold()
                         Spacer()
                        Text(cars.transManufacture)
                    }
                    Spacer()
                    HStack{
                        Text("Name:")
                            .font(.title2)
                            .bold()
                        Spacer()
                        Text(cars.trannyName)
                    }
                    Spacer()
                    HStack{
                        Text("Drive Type:")
                            .font(.title2)
                            .bold()
                         Spacer()
                        Text(cars.driveType)
                    }
                    Spacer()
                    HStack{
                        Text("Gearing:")
                            .font(.title2)
                            .bold()
                         Spacer()
                        Text(cars.gearing)
                    }
                    HStack{
                       Text("Trans Configuation:")
                            .font(.title2)
                            .bold()
                         Spacer()
                        Text(cars.transConfig)
                    }
                }
                .frame(width: 365, height: 200)
                .padding()
                .foregroundColor(.primary)
                .background(Color.secondary
                    .opacity(0.3))
                .border(.primary, width: 4)
            }
            .padding(.bottom, 45)
          
            
        }
        .navigationTitle(cars.name)
        .navigationBarTitleDisplayMode(.inline)
        
    }
}
        
        
        
 

struct CarDetails_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        CarDetails(cars: ModelData().cars[1])
            .environmentObject(modelData)
    }
}
