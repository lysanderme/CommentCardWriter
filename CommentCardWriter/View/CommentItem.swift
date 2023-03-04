//
//  CommentItem.swift
//  CommentCardWriter
//
//  Created by Myrddin-Evans, Lysander (JD) on 24/02/2023.
//

import SwiftUI

struct CommentItem: View {
    @State var chosen: Bool = false
    @ObservedObject var subjectAndMaster: Subject
    
    var body: some View {
        return List {
            Section(header: Text("\(subjectAndMaster.code), \(subjectAndMaster.master)")) {
                
                HStack {
                    Text("Enjoyment:")
                    Slider(value: $subjectAndMaster.enjoyment, in: 0 ... 10, onEditingChanged: { _ in
                    })
                }
                HStack {
                    Text("Difficulty:")
                    Slider(value: $subjectAndMaster.difficulty, in: 0 ... 10, onEditingChanged: { _ in
                    })
                }
                
                Button("Generate Commment", action: {
                    subjectAndMaster.getComment()
                    self.chosen = true
                })
                Button("Copy Comment", action: {
                    UIPasteboard.general.setValue(subjectAndMaster.comment, forPasteboardType: "public.plain-text")
                })
                
            }
            if chosen {
                Section {
                    TextField(subjectAndMaster.comment, text: $subjectAndMaster.comment, prompt: Text("Write comment here"), axis: .vertical)
                        .padding(10)
                }
            }
        }
    }
}

struct CommentItem_Previews: PreviewProvider {
    static var previews: some View {
        CommentItem(subjectAndMaster: Subject(master: "DPC", code: "CComX-1", subject: "Computer Science"))
    }
}
