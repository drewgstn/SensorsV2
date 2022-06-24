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
            VStack {
                Section {
                    Text("2.0 (1) includes improvements and bug fixes for Sensors V2")
                        .multilineTextAlignment(.center)
                        .foregroundColor(.primary)
                        .padding(.bottom, 650.0)
                        .padding([.leading, .trailing], 2.0)
                }
                
                    
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("About this Version")
                        .font(.largeTitle.bold())
                        .accessibilityAddTraits(.isHeader)
                        .foregroundColor(.primary)
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
