//
//  ContentView.swift
//  Word Scrambler
//
//  Created by Yashwanth Raj Varadharajan on 7/11/24.
//

import SwiftUI

struct ContentView: View {
    let people = ["Person A", "Person B", "Person C"]
    
    var body: some View {
//        List {
//            Section("Section 1") {
//                ForEach(0..<6) { numb in
//                    Text("Hello world \(numb)")
//                }
//            }
//            
//            Section("Section 2") {
//                Text("Hello World!!")
//                Text("Hello World!!")
//                Text("Hello World!!")
//                Text("Hello World!!")
//                Text("Hello World!!")
//            }
//            
//            Section("Section 3") {
//                Text("Hello World!!")
//                Text("Hello World!!")
//                Text("Hello World!!")
//                
//            }
//        }
//        .listStyle(.grouped)
//        
        // Another representation
//        List (0..<12) {
//            Text("Hello World to \($0)")
//        }
        
        List(people, id: \.self) {
            Text($0)
        }
    }
    
    func testString() {
        let input = "a b c"
        let letters = input.components(separatedBy: " ")
        let letter = letters.randomElement()
        
        let word = "swift"
        let checker = UITextChecker()
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        let allGood = misspelledRange.location == NSNotFound
    }
}

#Preview {
    ContentView()
}
