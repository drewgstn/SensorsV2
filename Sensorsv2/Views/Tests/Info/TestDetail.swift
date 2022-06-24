//
//  TestDetail.swift
//  Sensorsv2
//
//  Created by Drew Goldstein on 6/24/22.
//

import SwiftUI

struct InfoDetail: View {
    @Environment(\.dismiss) private var dismiss
    @State var isPresented: Bool = false
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Info")) {
                    NavigationLink {
                        VersionInfoDetail()
                    } label: {
                        Text("Version")
                            .foregroundColor(.primary)
                    }
                }
            }
        }
            .sheet(isPresented: $isPresented) {
                VersionInfoDetail()
                    .navigationTitle("App Information")
                    .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
    
    struct InfoDetail_Previews: PreviewProvider {
        static var previews: some View {
            InfoDetail()
        }
    }

