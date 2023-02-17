//
//  ContentView.swift
//  My_Profile
//
//  Created by Jacob Lavenant on 2/3/23.
//

import SwiftUI


struct ContentView: View {
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
        case trackTimes
    }
    
    var body: some View {
        
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem() {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            
            TrackTimes()
                .tabItem() {
                    Label("Track Times", systemImage: "car.rear.road.lane")
                }
                .tag(Tab.trackTimes)
            CarList()
                .tabItem() {
                    Label("Garage", systemImage: "door.garage.closed")
                }
                .tag(Tab.list)
        }
     /*
        Form {
            
            Section {
                VStack {
                    Text("2020 Ford Mustang GT500")
                        .font(.largeTitle)
                        .multilineTextAlignment(.trailing)
                    Divider()
                        .frame(height: 3)
                        .overlay(.secondary)
                    //  Text("Hello, world!")
                }
                .padding(10)
            }
            
            
            
            
            
            
            Section{
                VStack{
                    Image("gt_500")
                        .resizable()
                        .scaledToFit()
                    Spacer()
                    Text("Gt 500 cornering at Las Vegas Motor Speedway")
                        .font(.caption2)
                    Spacer()
                }
                
                //    }
                .background(Color(UIColor.systemBackground))
                .listRowInsets(EdgeInsets())
                
                //   Section {
                Text("Vehicle Specs")
                    .font(.title)
                VStack{
                    HStack{
                        Text("Price:")
                        Spacer()
                        Text("$73,995 MSRP")
                    }
                    Spacer()
                    HStack{
                        Text("Engine:")
                        Spacer()
                        Text("5.2L Supercharged V8")
                    }
                    Spacer()
                    HStack{
                        Text("Horsepower:")
                        Spacer()
                        Text("760Hp")
                    }
                    Spacer()
                    HStack{
                        Text("Torque:")
                        Spacer()
                        Text("625 lb-ft")
                    }
                    Spacer()
                    HStack{
                        Text("Transmission:")
                        Spacer()
                        Text("7-Speed Dual Clutch Automatic")
                    }
                    Spacer()
                    
                }
                
            }
            
            
            
            
            
            
            
            Section{
                VStack{
                    Spacer()
                    Image("5.2_engine")
                        .resizable()
                        .scaledToFit()
                    Spacer()
                    Text("The 5.2 \"Predator\" SuperCharged V8 ")
                        .font(.caption)
                    Spacer()
                }
                //    }
                //  }
                
                .background(Color(UIColor.systemBackground))
                .listRowInsets(EdgeInsets())
                
                //   Section {
                Text("Engine Specs")
                    .font(.title)
                VStack{
                    HStack{
                        Text("Engine Family:")
                        Spacer()
                        Text("Ford Modular")
                    }
                    Spacer()
                    HStack{
                        Text("Diplacement:")
                        Spacer()
                        Text("5.2 Liters")
                    }
                    Spacer()
                    HStack{
                        Text("Aspiration:")
                        Spacer()
                        Text("Supercharged")
                    }
                    Spacer()
                    HStack{
                        Text("Supercharger:")
                        Spacer()
                        Text("Eaton TVS R2650")
                    }
                    Spacer()
                    HStack{
                        Text("Valve Configuration:")
                        Spacer()
                        Text("DOHC with VCT")
                    }
                    Spacer()
                    
                }
            } header: {
                Text("PowerTrain Details")
                Divider()
                    .frame(height: 3)
                    .overlay(.secondary)
            }
            
            
            
            
            
            
            
            
            Section{
                VStack{
                    Spacer()
                    Image("5.2_trans")
                        .resizable()
                        .scaledToFit()
                    Spacer()
                    Text("The 7 Speed Dual-Clutch Transmission ")
                        .font(.caption)
                    Spacer()
                }
          //  }
            .background(Color(UIColor.systemBackground))
            .listRowInsets(EdgeInsets())
            
          //  Section {
                Text("Transmission Specs")
                    .font(.title)
                VStack{
                    HStack{
                        Text("Manufacture:")
                        Spacer()
                        Text("Tremec")
                    }
                    Spacer()
                    HStack{
                        Text("Name:")
                        Spacer()
                        Text("TR-9070")
                    }
                    Spacer()
                    HStack{
                        Text("Drive Type:")
                        Spacer()
                        Text("Automatic")
                    }
                    Spacer()
                    HStack{
                        Text("Gearing:")
                        Spacer()
                        Text("7-Speed")
                    }
                    Spacer()
                    HStack{
                        Text("Trans configuration:")
                        Spacer()
                        Text("Dual-Clutch")
                    }
                    Spacer()
                }
            }
            
            
            
          //  Spacer()
            
            
            Section{
                VStack{
                    Image("gt500_inside")
                        .resizable()
                        .scaledToFit()
                    Spacer()
                    Text("Ford's sync 3 Infotainment System and Digital Guage Cluster")
                        .font(.caption2)
                    Spacer()
                } .background(Color(UIColor.systemBackground))
                    .listRowInsets(EdgeInsets())
                
                VStack{
                    Image("gt500_inside2")
                        .resizable()
                        .scaledToFit()
                    Spacer()
                    Text("Gt 500 Front seats by Recaro")
                        .font(.caption2)
                    Spacer()
                }
                
                .background(Color(UIColor.systemBackground))
                .listRowInsets(EdgeInsets())
         //   }
            
            
          //  Section{
                Text("Interior Specs")
                    .font(.title)
                HStack{
                    Text("Seating Capcity:")
                    Spacer()
                    Text("4")
                }
                HStack{
                    Text("Entertainment System:")
                    Spacer()
                    Text("Sync 3")
                }
                HStack{
                    Text("Guage Cluster:")
                    Spacer()
                    Text("Digital")
                }
            }header:{
                Text("Interior Details")
                Divider()
                    .frame(height: 3)
                    .overlay(.secondary)
            }
            
            
          //  Section{
                //VStack{
            //        Text(cars.name)
           //             .font(.largeTitle)
               // }
          //  }
            
            
            
        }*/
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
            .environment(\.colorScheme, .dark)
    }
}
