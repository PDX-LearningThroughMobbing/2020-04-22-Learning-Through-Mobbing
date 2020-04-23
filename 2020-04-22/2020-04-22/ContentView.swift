//
//  ContentView.swift
//  2020-04-22
//
//  Created by Jeff Boek on 4/22/20.
//  Copyright © 2020 Jeff Boek. All rights reserved.
//

import SwiftUI

struct Emoji: Codable, Identifiable, CustomStringConvertible {
    enum CodingKeys: String, CodingKey {
        case name = "description"
        case emoji
    }
    var id: String { return name }
    var description: String { return "\(emoji)" }
    
    var name: String
    var emoji: String
}

var emoji = try! JSONDecoder().decode([Emoji].self, from: Data(contentsOf: Bundle.main.url(forResource: "data", withExtension: "json")!))

struct ContentView: View {
    @State var searchText = ""
    var body: some View {
        VStack {
            TextField("Search", text: $searchText)
            List(emoji) { emoji in
                HStack {
                    Text(emoji.name)
                    Text(emoji.emoji)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
