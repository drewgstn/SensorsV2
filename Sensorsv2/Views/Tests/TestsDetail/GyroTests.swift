//
//  GyroTests.swift
//  Sensorsv2
//
//  Created by Drew Goldstein on 6/24/22.
//

import SwiftUI
import CoreMotion

struct GyroTests: View {
    @State var isPresented: Bool = false
    let motionManager = CMMotionManager()
    let queue = OperationQueue()
    
    @State private var gyrox = Double.zero
    @State private var gyroy = Double.zero
    @State private var gyroz = Double.zero
    var body: some View {
         NavigationStack {
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
                    Text("Gyro Data (unable to fetch: 1)")
                        .font(.headline)
                        .accessibilityAddTraits(.isHeader)
                        .foregroundColor(.primary)
                }
            }
            .navigationBarItems(trailing:
                                    Button(action: {
                isPresented = true
            }){
                Image(systemName: "info.circle")
            }
            )
            .padding(.leading, 0.0)
            .sheet(isPresented: $isPresented) {
                SheetViewG()
            .foregroundColor(Color.secondary)
            }
        }
    }
}

struct SheetViewG: View {
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
            .navigationTitle("Gyro Data Info (unable to fetch: 1)")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing:
                                    Button("Done") {
                dismiss()
                
            }
                .foregroundColor(.primary))
        }
    }
}

struct GyroTests_Previews: PreviewProvider {
    static var previews: some View {
        GyroTests()
    }
}
