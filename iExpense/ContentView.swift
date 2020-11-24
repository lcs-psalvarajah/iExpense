//
//  ContentView.swift
//  iExpense
//
//  Created by Salvarajah, Prajina on 2020-11-24.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount =
        UserDefaults.standard.integer(forKey: "Tap")
    
    var body: some View {
        Button("Tap Count: \(tapCount)") {
            self.tapCount += 1
            UserDefaults.standard.set(self.tapCount, forKey: "Tap")
        }
    }
}
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

