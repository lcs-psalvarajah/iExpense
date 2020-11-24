//
//  ContentView.swift
//  iExpense
//
//  Created by Salvarajah, Prajina on 2020-11-24.
//

import SwiftUI

struct SecondView: View {
    @Environment(\.presentationMode) var presentationMode
    var name: String
    
    var body: some View {
        Button("Dismiss") {
            self.presentationMode.wrappedValue.dismiss()
        }
    }
}
struct ContentView: View {
    @State private var showingSheet = false
    
    var body: some View {
        Button ("Show sheet") {
            self.showingSheet.toggle()
            
        }
        .sheet(isPresented: $showingSheet) {
            SecondView(name: "jina")
            
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
