//
//  AccountIntI2.swift
//  Sensorsv2
//
//  Created by Drew Goldstein on 6/26/22.
//

import SwiftUI

//
//  AccountInt.swift
//  Sensorsv2
//
//  Created by Drew Goldstein on 6/25/22.
//

import SwiftUI

struct AccountIntI2: View {
    let gradient = Gradient(colors: [.black, .pink])
    @State var isPresented: Bool = false
    var body: some View {
        NavigationView {
            ScrollView {
                ZStack {
                    Image("AccountInt1")
                        .frame(width: 390 , height: 10)
                        .blur(radius: 50)
                        .blendMode(.normal)
                        .opacity(100)
                        .padding(.top, -500)
                    
                    VStack {
                        Image("AccountInt0")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 125, height: 125)
                            .cornerRadius(150)
                        
                        
                        Text("Drew")
                            .font(.system(size: 50))
                            .padding(.top, -5)
                            .fontWeight(.bold)
                            .blendMode(.softLight)
                        Text("@drewgstn")
                            .font(.system(size: 25))
                            .fontWeight(.medium)
                            .blendMode(.softLight)
                        Button(action: {
                            isPresented = true
                        }) {
                            HStack {
                                Text("EDIT")
                                    .kerning(0.2)
                                    .font(.system(size: 20, weight: .heavy, design: .default))
                                    .foregroundColor(Color.white)
                                    .padding(.vertical, 6)
                                    .padding(.horizontal, 20)
                                    .background(RoundedRectangle(cornerRadius: 20, style: .continuous)
                                        .foregroundColor(Color.black), alignment: .center)
                                    .padding(.top, 0)
                            }
                            
                        }
                        
                        Text("")
                            .frame(width: 390.0, height: 1000)
                            .background()
                            .padding(.top, 10)
                    }
                    
                }
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Profile")
                        .font(.headline)
                        .accessibilityAddTraits(.isHeader)
                        .foregroundColor(.primary)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Menu(content: {
                        Section {
                            Button(action: {
                                isPresented = true
                            }){
                                Label("Edit Profile", systemImage: "square.and.pencil")
                            }
                        }
                        Section {
                            Button(action: {
                                isPresented = true
                            }){
                                Label("Share Profile...", systemImage: "square.and.arrow.up")
                            }
                        }
                    }) {
                        Image(systemName: "ellipsis.circle.fill")
                            .imageScale(.large)
                            .foregroundColor(Color.primary)
                    }
                    
                    .sheet(isPresented: $isPresented) {
                        AccountIntDetailI2()
                            .foregroundColor(Color.secondary)
                    }
                    .sheet(isPresented: $isPresented) {
                        VersionInfoDetail()
                            .foregroundColor(Color.secondary)
                    }
                }
            }
        }
    }
}

struct AccountIntI2_Previews: PreviewProvider {
    static var previews: some View {
        AccountIntI2()
    }
}

