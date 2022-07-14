//
//  FeedViewI2.swift
//  Sensorsv2
//
//  Created by Drew Goldstein on 6/26/22.
//

import SwiftUI

struct FeedViewI2: View {
    var body: some View {
        ScrollView {
            VStack {
                Image(systemName: "square.3.layers.3d.down.left")
                    .imageScale(.large)
                    .foregroundColor(.primary)
                Text("FeedViewI2")
            }
            .padding(.top, 350.0)
        }
    }
}

struct FeedViewI2_Previews: PreviewProvider {
    static var previews: some View {
        FeedViewI2()
    }
}
