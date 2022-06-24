//
//  GyroTests.swift
//  Sensorsv2
//
//  Created by Drew Goldstein on 6/24/22.
//

import SwiftUI
import CoreMotion

struct GyroTests: View {
    let motionManager = CMMotionManager()
    let queue = OperationQueue()
    
    @State private var gyrox = Double.zero
    @State private var gyroy = Double.zero
    @State private var gyroz = Double.zero
    var body: some View {
         NavigationView {
            VStack {
                Text("x: 0.000000")
                Text("y: 0.000000")
                Text("z: 0.000000")
            }
            .foregroundColor(.gray)
            .padding(.bottom, 600.0)
            .padding(.trailing, 230.0)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Gyro Data (unable to fetch)")
                        .font(.headline)
                        .accessibilityAddTraits(.isHeader)
                        .foregroundColor(.primary)
                }
            }
        }
    }
}

struct GyroTests_Previews: PreviewProvider {
    static var previews: some View {
        GyroTests()
    }
}
