//
//  TrackTimes.swift
//  My_Profile
//
//  Created by Jacob Lavenant on 2/15/23.
//

import SwiftUI

struct TrackTimes: View {
    let trackTimes: [String: Double] = [
            "Car A": 102.45,
            "Car B": 99.32,
            "Car C": 104.21,
            "Car D": 97.84
        ]
        
        var body: some View {
            VStack(alignment: .leading) {
                Text("Track Times")
                    .font(.title)
                    .padding(.bottom)
                
                ForEach(trackTimes.sorted(by: { $0.value < $1.value }), id: \.key) { car, time in
                    HStack {
                        Text(car)
                            .font(.headline)
                        Spacer()
                        Text(String(format: "%.2f s", time))
                            .font(.subheadline)
                    }
                    .padding(.vertical, 5)
                }
            }
            .padding()
        }
    }


struct TrackTimes_Previews: PreviewProvider {
    static var previews: some View {
        TrackTimes()
    }
}
