//
//  CommentItem.swift
//  CommentCardWriter
//
//  Created by Myrddin-Evans, Lysander (JD) on 24/02/2023.
//

import SwiftUI

struct CommentItem: View {
    @State var chosen: Bool = false
    let comments: [String] = ["In this subject I am doing very well and I couldn't improve anything.","I believe that I am the worst to ever study this - everything as appalling", "I think I am near the middle of the pack in this class. All of the work is challenging, but I am getting through it OK.", "I am literally better than the teacher and I dont know what I am doing in this set."]
    let subjectAndMaster: (String, String)
    @State var element: String = "In this subject I am doing very well and I couldn't improve anything."
    
    var body: some View {
        let master = "\(subjectAndMaster.1), \(subjectAndMaster.0)"
        element = comments.randomElement()!
        return List {
            Section(header: Text(master)) {
                
                Button("Generate Commment", action: {
                    self.chosen.toggle()
                })
                Button("Copy Comment", action: {
                    UIPasteboard.general.setValue(element, forPasteboardType: "public.plain-text")
                })
            }
            if chosen {
                Section {
                    TextField(element, text: $element, prompt: Text("Write comment here"))
                        .padding(10)
                }
            }
        }
    }
}

struct CommentItem_Previews: PreviewProvider {
    static var previews: some View {
        CommentItem(subjectAndMaster: ("Applied Maths", "RSO-J"))
    }
}
