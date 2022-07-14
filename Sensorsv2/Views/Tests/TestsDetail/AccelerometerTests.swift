//
//  AccelerometerTests.swift
//  Sensorsv2
//
//  Created by Drew Goldstein on 6/24/22.
//

import SwiftUI
import CoreMotion

struct AccelTests: View {
    @State var isPresented: Bool = false
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
            .navigationBarItems(trailing:
                                    Button(action: {
                isPresented = true
            }){
                Image(systemName: "info.circle")
            }
            )
            .padding(.leading, 0.0)
            .sheet(isPresented: $isPresented) {
                SheetViewA()
            .foregroundColor(Color.secondary)
            }
        }
    }
}

struct SheetViewA: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationView {
            VStack {
                Text("CoreMotion live accelerometer events, using CMMM, OQ. ")
                    .fontWeight(.regular)
                    .foregroundColor(.primary)
                
                Text("WARNING DOES NOT CHECK AVAILIBILITY, RUNS PAST CLOSURE")
                    .fontWeight(.bold)
                    .foregroundColor(Color.red)
            }
            .padding([.leading, .trailing], 10)
            .padding(.bottom, 600)
            .navigationTitle("Accelerometer Data Info")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing:
                                    Button("Done") {
                dismiss() // Implicitly calls dismiss.callAsFunction()
                
            }
                .foregroundColor(.primary))
        }
    }
}


struct AccelTests_Previews: PreviewProvider {
    static var previews: some View {
        AccelTests()
    }
}
