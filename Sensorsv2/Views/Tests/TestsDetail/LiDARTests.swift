//
//  LiDARTests.swift
//  Sensorsv2
//
//  Created by Drew Goldstein on 6/24/22.
//

import SwiftUI

struct LiDARTests: View {
    var body: some View {
        ScrollView {
            VStack {
                Image(systemName: "square.3.layers.3d.down.left")
                    .imageScale(.large)
                    .foregroundColor(.primary)
                Text("liDAR")
            }
            .padding(.top, 350.0)
        }
    }
}

struct LiDARTests_Previews: PreviewProvider {
    static var previews: some View {
        LiDARTests()
    }
}
