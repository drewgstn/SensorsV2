//
//  TabView.swift
//  Sensorsv2
//
//  Created by Drew Goldstein on 6/23/22.
//

import SwiftUI

struct TabViewC: View {
    var body: some View {
        TabView {
            SensorTestsView()
                .tabItem {
                    Label("Sensors", systemImage: "iphone.radiowaves.left.and.right")
                }
            ARKitTestsView()
                .tabItem {
                    Label("ARKit", systemImage: "arkit")
                }
        }
    }
}

struct TabViewC_Previews: PreviewProvider {
    static var previews: some View {
        TabViewC()
    }
}
