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
                    TextField(
                        "Type notes here:",
                        text: $report
                    )
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 150.0)
                }
            }
                .navigationTitle("Notes")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(trailing:
                                            Button("Save") {
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
