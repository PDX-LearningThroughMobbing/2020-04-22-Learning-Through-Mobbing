//
//  ContentView.swift
//  2020-04-22
//
//  Created by Jeff Boek on 4/22/20.
//  Copyright © 2020 Jeff Boek. All rights reserved.
//

import SwiftUI

struct Emoji: Identifiable, CustomStringConvertible {
    var id: String { return name }
    var description: String { return "\(emoji)" }
    
    var name: String
    var emoji: Character
}

var emoji = [
    Emoji(name: "", emoji: <#T##Character#>)
]

struct ContentView: View {
    @State var searchText = ""
    var body: some View {
        VStack {
            TextField("Search", text: $searchText)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
