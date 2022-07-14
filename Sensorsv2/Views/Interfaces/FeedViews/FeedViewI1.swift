//
//  FeedViewI1.swift
//  Sensorsv2
//
//  Created by Drew Goldstein on 6/26/22.
//

import SwiftUI

struct FeedViewI1: View {
    @State var isPresented: Bool = false
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                }
            }
            .navigationTitle("FeedI1")
            .navigationBarItems(trailing:
                                    Button(action: {
                isPresented = true
            }){
                
                    Image("AccountInt0")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .cornerRadius(150)
                        .padding(.top, 80)
                        .padding(.trailing, 10)
                }
            
            )
            .padding(.leading, 0.0)
            .sheet(isPresented: $isPresented) {
                AccountIntI2()
            .foregroundColor(Color.secondary)
            
            }
        }
    }
}

struct FeedViewI1_Previews: PreviewProvider {
    static var previews: some View {
        FeedViewI1()
    }
}
