//
//  AccelerometerTests.swift
//  Sensorsv2
//
//  Created by Drew Goldstein on 6/24/22.
//

import SwiftUI
import CoreMotion

struct AccelTests: View {
    let motionManager = CMMotionManager()
    let queue = OperationQueue()
    
    @State private var pitch = Double.zero
    @State private var yaw = Double.zero
    @State private var roll = Double.zero
    var body: some View {
        NavigationStack {
            VStack{
                Text("p: \(pitch)")
                Text("y: \(yaw)")
                Text("r: \(roll)")
            }
            .padding(.bottom, 600.0)
            .padding(.trailing, 230.0)
            .onAppear {
                print("ON APPEAR")
                self.motionManager.startDeviceMotionUpdates(to: self.queue) { (data: CMDeviceMotion?, error: Error?) in
                    guard let data = data else {
                        print("Error: \(error!)")
                        return
                    }
                    let attitude: CMAttitude = data.attitude
                    
                    print("pitch: \(attitude.pitch)")
                    print("yaw: \(attitude.yaw)")
                    print("roll: \(attitude.roll)")
                    
                    DispatchQueue.main.async {
                        self.pitch = attitude.pitch
                        self.yaw = attitude.yaw
                        self.roll = attitude.roll
                    }
                }
            }
            .navigationTitle("Acceleromter Data")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}


struct AccelTests_Previews: PreviewProvider {
    static var previews: some View {
        AccelTests()
    }
}
