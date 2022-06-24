//
//  ARKitTestsView.swift
//  Sensorsv2
//
//  Created by Drew Goldstein on 6/24/22.
//

import SwiftUI

struct ARKitTestsView: View {
    var body: some View {
        ScrollView {
            VStack {
                Image(systemName: "arkit")
                    .imageScale(.large)
                    .foregroundColor(.primary)
                Text("arkit3")
            }
            .padding(.top, 350.0)
        }
    }
}

struct ARKitTestsView_Previews: PreviewProvider {
    static var previews: some View {
        ARKitTestsView()
    }
}

