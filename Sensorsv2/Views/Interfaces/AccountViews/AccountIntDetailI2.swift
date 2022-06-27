//
//  AccountIntDetailI2.swift
//  Sensorsv2
//
//  Created by Drew Goldstein on 6/26/22.
//

import SwiftUI

struct AccountIntDetailI2: View {
    @State var isPresented: Bool = false
    @State private var disabled = true
    @State private var report: String = ""
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        NavigationStack {
            VStack {
                ZStack {
                    Text("")
                        .frame(width: 390.0, height: 200)
                        .background(Color(.systemGroupedBackground))
                        
                        .padding(.top, -70)
                        .padding(.bottom, -80)
                    Image("AccountInt2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 125, height: 125)
                        .cornerRadius(150)
                        .padding()
                        .padding(.bottom, 10)
                    Button(action: {
                        isPresented = true
                    }) {
                        HStack {
                            Image(systemName: "photo")
                                .foregroundColor(.accentColor)
                                .padding(.top, 160)
                            Text("Add Banner Image")
                                .font(.body)
                                .foregroundColor(.accentColor)
                                .padding(.top, 160)
                            
                        }
                        
                    }
                }
                List {
                    Section(footer: Text("Your photo, name, and username will be visible throughout the app and web search results.")) {
                        HStack {
                            Text("Name")
                            
                            TextField(
                                "drew",
                                text: $report
                            )
                            .foregroundColor(.primary)
                            .padding(.leading, 219)
                        }
                        HStack {
                            Text("Username")
                            
                            TextField(
                                "@drewgstn",
                                text: $report
                            )
                            .foregroundColor(.primary)
                            .padding(.leading, 137)
                        }
                        
                    }
                    Section(footer: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ac tincidunt vitae semper quis lectus.")) {
                        HStack {
                            Text("Bio")
                            
                            TextField(
                                "bio",
                                text: $report
                            )
                            .foregroundColor(.primary)
                            .padding(.leading, 254)
                        }
                        HStack {
                            Text("Location")
                            
                            TextField(
                                "mars",
                                text: $report
                            )
                            .foregroundColor(.primary)
                            .padding(.leading, 199)
                        }
                        
                    }
                    Section(footer: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Cras tincidunt lobortis feugiat vivamus at augue eget arcu dictum.")) {
                        HStack {
                            NavigationLink {
                                    AccountIntDetail()
                                } label: {
                                        Text("Professional Profile")
                                        .foregroundColor(.primary)
                                    }
                            
                            
                        }
                    }
                    Section(footer: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")) {
                        HStack {
                            NavigationLink {
                                    AccountIntDetail()
                                } label: {
                                        Text("Manage Account")
                                        .foregroundColor(.primary)
                                    }
                        }
                    }
                    
                }
                
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

struct AccountIntDetailI2_Previews: PreviewProvider {
    static var previews: some View {
        AccountIntDetailI2()
    }
}
