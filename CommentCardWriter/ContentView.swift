//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Myrddin-Evans, Lysander (JD) on 04/02/2023.
//

import SwiftUI

struct ContentView: View {
    let subjectsAndMasters: [(String, String)] = [("Applied Maths", "RSO-J"), ("Pure Maths", "BJH"), ("Computer Science", "DPC"), ("Computer Science", "MC"), ("Latin Language", "IH"), ("Latin Literature", "KMA")]
    var body: some View {
        Form {
            CommentItem(subjectAndMaster: subjectsAndMasters[0])
            CommentItem(subjectAndMaster: subjectsAndMasters[1])
            CommentItem(subjectAndMaster: subjectsAndMasters[2])
            CommentItem(subjectAndMaster: subjectsAndMasters[3])
            CommentItem(subjectAndMaster: subjectsAndMasters[4])
            CommentItem(subjectAndMaster: subjectsAndMasters[5])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
