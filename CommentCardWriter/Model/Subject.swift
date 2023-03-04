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
    var commentsBank: [[String]] = [["HE LD In this subject I am doing very well and I couldn't improve anything. I am really enjoying myself.","HE LMD In the subject I am really enjoying myself, and am enjoying the challenges it is bringing me","HE HMD I am really enjoying myself, however I am finding the work rather difficult - I think some extra work will help me.","HE HD I am really enjoying this subject and am finding it interesting, but I have absolutely no idea what I am doing whatsoever - it is really difficult for me."],["HME LD I find the subject enjoyable, and I am finding it very easy - it is nice to not have to work and still be top of the class.","HME LMD I find the subject enjoyable, and I am finding it fairly easy - there are still some topics that I find a little more difficult.","HME HMD I find the subject enjoyable, but it is getting quite difficult for me to keep up with the division - I am fine currently, but I think I may fall behind imminently.","HME HD I find the subject enjoyable, but it is very difficult for me to keep up with the division - I think that I will need to work very hard to catch up with the workflow."],["LME LD I am finding this subject very easy, and therefore it is not very enjoyable for me, as I enjoy an intellectual challenge.", "LME LMD I am finding this subject fairly simple, and therefore I am not enjoying myself as much as I might, however when the work gets a little more difficult I might enjoy it more.","LME HMD","LME HD"],["LE LD I am literally better than the teacher and I dont know what I am doing in this set - it is really boring.","LE LMD","LE HMD","LE HD I believe that I am the worst to ever study this - everything as appalling"]]
    
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

