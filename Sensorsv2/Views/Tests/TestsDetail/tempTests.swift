//
//  tempTests.swift
//  Sensorsv2
//
//  Created by Drew Goldstein on 6/24/22.
//

import SwiftUI

struct TempTests: View {
    var body: some View {
        ScrollView {
            VStack {
                Image(systemName: "ellipsis")
                    .imageScale(.large)
                    .foregroundColor(.primary)
                Text("other")
            }
            .padding(.top, 350.0)
        }
    }
}

struct TempTests_Previews: PreviewProvider {
    static var previews: some View {
        TempTests()
    }
}
