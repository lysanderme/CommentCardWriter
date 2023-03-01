//
//  Subject.swift
//  CommentCardWriter
//
//  Created by Myrddin-Evans, Lysander (JD) on 01/03/2023.
//

import Foundation

class Subject {
    var master: String
    var code: String
    var subject: String
    var enjoyment: Double
    var difficulty: Double
    
    init(master: String, code: String, subject: String) {
        self.master = master
        self.code = code
        self.enjoyment = 5.0
        self.difficulty = 5.0
        self.subject = subject
    }
    
    func newEnjoyment(new: Double) {
        self.enjoyment = new
    }
    
    func newDifficulty(new: Double) {
        self.difficulty = new
    }
}
