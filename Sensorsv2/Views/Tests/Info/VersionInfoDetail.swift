//
//  VersionInfoDetail.swift
//  Sensorsv2
//
//  Created by Drew Goldstein on 6/24/22.
//

import SwiftUI

struct VersionInfoDetail: View {
    var body: some View {
        NavigationView {
                List {
                    Section(header: Text("Version Info"),footer: Text("Sensors 2.0 (20a)")
                        .font(.headline)
                        .fontWeight(.medium)
                        .foregroundColor(.primary)
                        .padding(.top, 5.0)) {
                    }
                    Section(footer: Text("This version indluded improvements and bug fixes for Sensors 2.0.")
                        .font(.callout)
                        .fontWeight(.regular)
                        .foregroundColor(.primary)
                        .padding(.top, -25)) {
                    }
                }
        }
    }
}


struct VersionInfoDetail_Previews: PreviewProvider {
    static var previews: some View {
        VersionInfoDetail()
    }
}
