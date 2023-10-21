//
//  ContentView.swift
//  Project1
//
//  Created by user247159 on 10/21/23.
//

import SwiftUI

struct EmojiIncrementorView: View {
    @State private var number = 0
    var emoji: String

    var body: some View {
        HStack {
            Text(emoji)
                .font(.title)
                .padding()

            Text("\(number)")
                .font(.title)
                .padding()

            Button(action: {
                number += 1
            }) {
                Text("+")
                    .font(.title)
                    .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
            }

            Button(action: {
                number -= 1
            }) {
                Text("-")
                    .font(.title)
                    .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                    .background(Color.red)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
            }
        }
    }
}

struct ContentView: View {
    let emojis = ["👍", "😄", "🙌", "🌟", "🎉", "❤️"]

    var body: some View {
        VStack {
            ForEach(emojis, id: \.self) { emoji in
                EmojiIncrementorView(emoji: emoji)
                    .padding()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
