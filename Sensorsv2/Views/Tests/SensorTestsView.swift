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
                Section(header: Text("Interfaces")) {
                    NavigationLink {
                        FeedViewMain()
                        } label: { //Feed View UIs
                                Text("FeedUIs")
                                .foregroundColor(.primary)
                            }
                    
                    NavigationLink {
                            AccelTests()
                        } label: { //Upload View UIs
                                Text("UploadUIs")
                                .foregroundColor(.primary)
                            }
                    NavigationLink {
                        AccountIntMain()
                        } label: { //Account View UIs
                                Text("AccountsUIs")
                                .foregroundColor(.primary)
                            }
                    NavigationLink {
                            TempTests()
                        } label: { //User Interaction UIs
                                Text("Interactions")
                                .foregroundColor(.primary)
                            }
                    NavigationLink {
                            TempTests()
                        } label: { //Artifical Intel UIs
                                Text("ARInteractions")
                                .foregroundColor(.primary)
                            }
                    NavigationLink {
                            TempTests()
                        } label: { // ******* ***** *** UIs
                                Text("VRInteractions")
                                .foregroundColor(.primary)
                            }
                    NavigationLink {
                            TempTests()
                        } label: { //Element View UIs
                                Text("InteractiveElements")
                                .foregroundColor(.primary)
                            }
                    NavigationLink {
                            TempTests()
                        } label: { //App Performance UIs
                                Text("Performance")
                                .foregroundColor(.primary)
                            }
                    NavigationLink {
                            TempTests()
                        } label: { //Open Source Interfaces
                                Text("APIs/Algorithms")
                                .foregroundColor(.primary)
                            }
                    NavigationLink {
                            TempTests()
                        } label: { //-\://- UIs
                                Text("Filters")
                                .foregroundColor(.primary)
                            }
                }
            }
            .navigationTitle("Sensors")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        isPresented = true
                    }){
                        Image(systemName: "info.circle")
                    }
                    
                    .padding(.leading, 0.0)
                    .sheet(isPresented: $isPresented) {
                        InfoSheet()
                            .foregroundColor(Color.secondary)
                    }
                }
            }
        }
    }
}

struct SensorTestsView_Previews: PreviewProvider {
    static var previews: some View {
        SensorTestsView()
    }
}
