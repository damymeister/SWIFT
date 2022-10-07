//
//  ContentView.swift
//  L1_Z222
//
//  Created by student on 03/10/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var a : String = ""
    @State private var b : String = ""
    @State private var c : String = ""
    @State private var suma : Int = 0
    @State private var srednia : Double = 0.0;
    
    var body: some View {
        VStack{
            Text("Liczby")
            TextField("0", text: $a)
            TextField("1", text: $b)
            TextField("2", text: $c)
            Button("Licz") {
                suma = Int(a)! + Int(b)! + Int(c)!
                srednia = Double(suma) / 3.0
            }
            Text(String(suma))
            Text(String(srednia))
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
