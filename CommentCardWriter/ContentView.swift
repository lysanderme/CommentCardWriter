//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Myrddin-Evans, Lysander (JD) on 04/02/2023.
//

import SwiftUI

struct ContentView: View {
    @State var chosen: Bool = false
    let comments: [String] = ["In this subject I am doing very well and I couldn't improve anything.","I beleive that I am the worst to ever study this - everything as appalling", "I think I am near the middle of the pack in this class. All of the work is challenging, but I am getting through it OK.", "I am literally  better than the teacher and I dont know what I am doing in this set."]
    var body: some View {
        Form {
            VStack {
                if chosen {
                    
                    Text("\(comments.randomElement() ?? "In this subject I am doing very well and I couldn't improve anything.")")
                }
                Spacer()
                Button("Generate Commment\n", action: {
                    self.chosen.toggle()
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
