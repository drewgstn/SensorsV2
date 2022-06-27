//
//  AccountIntMain.swift
//  Sensorsv2
//
//  Created by Drew Goldstein on 6/26/22.
//

import SwiftUI

struct AccountIntMain: View {
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Account Systems")) {
                    NavigationLink {
                        AccountIntI1()
                    } label: {
                        Text("Account Interface v1")
                            .foregroundColor(.primary)
                    }
                    
                    NavigationLink {
                        AccountIntI2()
                    } label: {
                        Text("Account Interface v2")
                            .foregroundColor(.primary)
                    }
                }
            }
        }
    }
}

struct AccountIntMain_Previews: PreviewProvider {
    static var previews: some View {
        AccountIntMain()
    }
}
