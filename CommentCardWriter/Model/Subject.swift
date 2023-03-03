//
//  Subject.swift
//  CommentCardWriter
//
//  Created by Myrddin-Evans, Lysander (JD) on 01/03/2023.
//

import Foundation

class Subject: ObservableObject {
    var master: String
    var code: String
    var subject: String
    var enjoyment: Double
    var difficulty: Double
    @Published var comment: String = ""
    var commentsBank: [[String]] = [["HE LD In this subject I am doing very well and I couldn't improve anything. I am really enjoying myself.","HE LMD In the subject I am really enjoying myself, and am enjoying the challenges it is bringing me","HE HMD I am really enjoying myself, however I am finding the work rather difficult - I think some extra work will help me.","HE HD I am really enjoying this subject and am finding it interesting, but I have absolutely no idea what I am doing whatsoever - it is really difficult for me."],["HME LD","HME LMD","HME HMD","HME HD"],["LME LD", "LME LMD","LME HMD","LME HD"],["LE LD I am literally better than the teacher and I dont know what I am doing in this set - it is really boring.","LE LMD","LE HMD","LE HD I believe that I am the worst to ever study this - everything as appalling"]]
    
    init(master: String, code: String, subject: String) {
        self.master = master
        self.code = code
        self.enjoyment = 5.0
        self.difficulty = 5.0
        self.subject = subject
    }
    
    
    
    func getComment() {
        if self.enjoyment >= 7.5 {
             if self.difficulty <= 2.5 {
                 comment = commentsBank[0][0]
             } else if self.difficulty <= 5.0 {
                 comment = commentsBank[0][1]
             } else if self.difficulty <= 7.5 {
                 comment = commentsBank[0][2]
             } else {
                 comment = commentsBank[0][3]
             }
        } else if self.enjoyment >= 5.0 {
            if self.difficulty <= 2.5 {
                comment = commentsBank[1][0]
            } else if self.difficulty <= 5.0 {
                comment = commentsBank[1][1]
            } else if self.difficulty <= 7.5 {
                comment = commentsBank[1][2]
            } else {
                comment = commentsBank[1][3]
            }
        } else if self.enjoyment >= 2.5 {
            if self.difficulty <= 2.5 {
                comment = commentsBank[2][0]
            } else if self.difficulty <= 5.0 {
                comment = commentsBank[2][1]
            } else if self.difficulty <= 7.5 {
                comment = commentsBank[2][2]
            } else {
                comment = commentsBank[2][3]
            }
        } else {
            if self.difficulty <= 2.5 {
                comment = commentsBank[3][0]
            } else if self.difficulty <= 5.0 {
                comment = commentsBank[3][1]
            } else if self.difficulty <= 7.5 {
                comment = commentsBank[3][2]
            } else {
                comment = commentsBank[3][3]
            }
        }
    }
    
}

