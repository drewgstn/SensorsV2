//
//  InfoSheet.swift
//  Sensorsv2
//
//  Created by Drew Goldstein on 6/24/22.
//

import SwiftUI

struct InfoSheet: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Info")) {
                    NavigationLink {
                            InfoDetail()
                        } label: {
                                Text("App Information")
                                .foregroundColor(.primary)
                            }
                    NavigationLink {
                            NotesDetail()
                        } label: {
                                Text("Notes")
                                .foregroundColor(.primary)
                            }
                }
                
            }

                .navigationTitle("Info")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(trailing:
                                        Button("Done") {
                    dismiss() // Implicitly calls dismiss.callAsFunction()
                        
                }
                    .foregroundColor(.primary))
        }
    }
}

struct InfoSheet_Previews: PreviewProvider {
    static var previews: some View {
        InfoSheet()
    }
}
