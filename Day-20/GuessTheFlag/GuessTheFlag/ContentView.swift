//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Yashwanth Raj Varadharajan on 6/27/24.
//  PROJECT TWO PART ONE

import SwiftUI

struct ContentView: View {
    @State private var alertButton = false
    
    var body: some View {
        
        //        VStack(alignment: .leading) {
        //            Text("Hello World!!")
        //            // Spacer()
        //            Text("My name is Yashwanth Raj Varadharajan")
        //        }
        
        //        ZStack{
        //            // Color.primary // These will change according to system
        //            Color.red  // This is a view of its own
        //                //.frame(width: 200, height: 200)
        //                .frame(minWidth: 200, maxWidth: .infinity, maxHeight: 300)
        //            Text("Hello again!")
        //        }// .ignoresSafeArea() // This will ignore safe area and expand to the full
        
        
//        ZStack{
//            VStack(spacing: 0){
//                Color.red
//                Color.blue
//            }
//            
//            Text("Hello World")
//                .foregroundStyle(.secondary)
//                .padding(50)
//                .background(.ultraThinMaterial)
//            
//        }.ignoresSafeArea()
        
        // LinearGradient(colors: [.white, .black], startPoint: .top, endPoint: .bottom)
        
        // RadialGradient(colors: [.blue,.black], center: .center, startRadius: 20, endRadius: 200)
        
        // AngularGradient(colors: [.red, .yellow, .green, .blue, .orange, .purple], center: .center)
        
//        Text("Helloo")
//            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
//            .foregroundStyle(.white)
//            .background(.indigo.gradient)
        
        //Button("Delete selection",role: .destructive, action: deleteAction)
        
        VStack{
            Button("Button 1") { }
                .buttonStyle(.bordered)
            
            Button("Button 2", role: .destructive) { }
                .buttonStyle(.bordered)
            
            Button("Button 3") { }
                .buttonStyle(.borderedProminent)
            
            Button("Button 4", role: .destructive) { }
                .buttonStyle(.borderedProminent)
            
            Button("Button 5") { }
                .buttonStyle(.borderedProminent)
                .tint(.indigo)
        }
        
        // Custom button styling
        Button {
            print("Button was pressed")
        } label: {
            Text("Tap Me")
                .frame(width: 80, height: 50)
                .foregroundColor(.white)
                .background(.red)
                .cornerRadius(15)
        }.padding()
        
        Image(systemName: "person")
        
        // Button with image and text inside it
        Button("Edit", systemImage: "person") { }.padding() .buttonStyle(.bordered)
        
        // Another representation but with custom building button
        Button{
            print("The buton was pressed")
        } label: {
            Label("Edit", systemImage: "person")
                .padding()
                .foregroundStyle(.white)
                .background(.red)
        }
        
        Button ("Alert") {
            alertButton = true
        } .alert("This is an important Message",isPresented: $alertButton) {
            // Button("OK") { }  // The alert button is automatically designed to toggle the alert message bool
            // OR if we want two buttons
            Button("Delete", role: .destructive) {}
            Button("Cancel", role: .cancel) {}
        } message: {
            Text("Please Read This!!")
        }
        
    }
    
//    func deleteAction() {
//        print("Delete button pressed")
//    }
}

#Preview {
    ContentView()
}
