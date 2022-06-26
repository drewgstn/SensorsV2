//
//  NotesDetail.swift
//  Sensorsv2
//
//  Created by Drew Goldstein on 6/24/22.
//

import SwiftUI


//Currently unsupported, will come in future update if nessesary, does not save any user input
struct NotesDetail: View {
    @State private var report: String = ""
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Notes")) {
                    NavigationLink {
                            GyroTests()
                        } label: {
                            Image(systemName: "note.text")
                            Text("Launch Notes")
                                .foregroundColor(.primary)
                            }
                    NavigationLink {
                            GyroTests()
                        } label: {
                            Image(systemName: "pencil")
                            Text("Launch Pages")
                                .foregroundColor(.primary)
                            }
                    .multilineTextAlignment(.leading)
                }
            }
                .navigationTitle("Notes")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(trailing:
                                            Button("Done") {
                    dismiss()
                                                    }
                                                
                .foregroundColor(.primary))
    }
    }
}

struct NotesDetail_Previews: PreviewProvider {
    static var previews: some View {
        NotesDetail()
    }
}
