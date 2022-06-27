//
//  AccountIntDetail.swift
//  Sensorsv2
//
//  Created by Drew Goldstein on 6/25/22.
//

import SwiftUI

struct AccountIntDetail: View {
    @State private var disabled = true
    @State private var report: String = ""
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        NavigationStack {
            VStack {
                Image("AccountInt2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 125, height: 125)
                    .cornerRadius(150)
                    .padding(.top, -260)
                Divider()
                    .padding([.leading, .trailing])
                    .padding(.top, -125)
                HStack {
                    Text("Name")
                        .padding(.trailing, 250)
                        .foregroundColor(.primary)
                    Text("Drew")
                        .foregroundColor(.primary)
                }
                    .padding([.leading, .trailing])
                    .padding(.top, -120)
                Divider()
                    .padding([.leading, .trailing])
                    .padding(.top, -100)
                HStack {
                    Text("Username")
                        .padding(.trailing, 90)
                        .padding(.leading, 0)
                        .foregroundColor(.primary)
                    Text("@drewgstn")
                        .padding(.leading, 81)
                        .foregroundColor(.primary)
                    
                }
                .padding([.leading, .trailing])
                .padding(.top, -95)
                Divider()
                    .padding([.leading, .trailing])
                    .padding(.top, -70)
                Text("Your photo, name, and username will be visible throughout the app and web search results.")
                    .font(.caption)
                    .foregroundColor(.gray)
                    .padding([.leading, .trailing], 20)
                    .padding(.top, -60.0)
                    .padding(.bottom, 130.0)
                
                .navigationTitle("Edit Profile")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(trailing:
                                        Button("Done") {
                    
                }
                    .disabled(disabled)
                                    
                    .fontWeight(.bold))
                
                .navigationBarItems(leading:
                                        Button("Cancel") {
                    dismiss()
                }
                    .foregroundColor(.primary))
            }
        }
    }
}

struct AccountIntDetail_Previews: PreviewProvider {
    static var previews: some View {
        AccountIntDetail()
    }
}
