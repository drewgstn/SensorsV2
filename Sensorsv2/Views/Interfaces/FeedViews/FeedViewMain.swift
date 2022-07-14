//
//  FeedViewMain.swift
//  Sensorsv2
//
//  Created by Drew Goldstein on 6/26/22.
//

import SwiftUI

struct FeedViewMain: View {
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Feed Systems")) {
                    NavigationLink {
                        FeedViewI1()
                    } label: {
                        Text("Feed Interface v1")
                            .foregroundColor(.primary)
                    }
                    
                    NavigationLink {
                        FeedViewI2()
                    } label: {
                        Text("Feed Interface v2")
                            .foregroundColor(.primary)
                    }
                }
            }
        }
    }
}

struct FeedViewMain_Previews: PreviewProvider {
    static var previews: some View {
        FeedViewMain()
    }
}
