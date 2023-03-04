//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Myrddin-Evans, Lysander (JD) on 04/02/2023.
//

import SwiftUI

struct ContentView: View {
    let subjectsAndMasters: [Subject] = [Subject(master: "DPC", code: "CComX-1", subject: "Computer Science"), Subject(master: "MC", code: "CComX-1", subject: "Computer Science"), Subject(master: "BJH", code: "CMdpW-2", subject: "Pure Maths"), Subject(master: "RSO-J", code: "CMdaY-3", subject: "Applied Maths"), Subject(master: "IH", code: "CLatV-1", subject: "Latin Language"), Subject(master: "KMA", code: "CLatV-1", subject: "Latin Literature")]
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
