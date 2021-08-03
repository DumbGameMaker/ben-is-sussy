//
//  ContentView.swift
//  Shared
//
//  Created by ur mom on 8/2/21.
//

import SwiftUI
struct ContentView: View {
    @State var susPerson = ""
    @State var showAlert = false
    @State var title = ""
    @State var content = ""
    
    var body: some View {
        VStack {
            Text("Who is sus?")
                .padding()
            
            HStack {
                TextField("Enter sus person", text: $susPerson)
                Button("Check", action: self.check)
            }
        }.alert(isPresented: $showAlert) {
            Alert(
                title: Text(title),
                message: Text(content),
                dismissButton: .default(Text("ok"))
            )
        }
    }
    
    func check() {
        let sus = susPerson.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
        
        if sus == "ben" {
            title = "Correct!"
            content = "Yes, you are right. Ben is always sus, never not sus."
        } else {
            title = "WRONG"
            content = "There is literally no way on earth that \(susPerson) is sus. You're sus for saying they're sus. Stop with the cap and tell the truth."
        }
        
        showAlert = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
