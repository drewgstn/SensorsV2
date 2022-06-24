//
//  SensorTestsView.swift
//  Sensorsv2
//
//  Created by Drew Goldstein on 6/24/22.
//

import SwiftUI

struct SensorTestsView: View {
    @State var isPresented: Bool = false
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Tests")) {
                    NavigationLink {
                            GyroTests()
                        } label: {
                                Text("Gyro")
                                .foregroundColor(.primary)
                            }
                    
                    NavigationLink {
                            AccelTests()
                        } label: {
                                Text("Accelerometer")
                                .foregroundColor(.primary)
                            }
                    NavigationLink {
                            LiDARTests()
                        } label: {
                                Text("LiDAR")
                                .foregroundColor(.primary)
                            }
                    NavigationLink {
                            TempTests()
                        } label: {
                                Text("Other")
                                .foregroundColor(.primary)
                            }
                }
            }
            .navigationDestination(for: Color.self) { color in
            }
            .navigationTitle("Sensors")
            .navigationBarItems(trailing:
                                    Button(action: {
                isPresented = true
            }){
                Image(systemName: "info.circle")
            }
            )
            .padding(.leading, 0.0)
            .sheet(isPresented: $isPresented) {
                InfoSheet()
            .foregroundColor(Color.secondary)
            }
            
        }
    }
}

struct SensorTestsView_Previews: PreviewProvider {
    static var previews: some View {
        SensorTestsView()
    }
}
