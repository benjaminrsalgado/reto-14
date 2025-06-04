//
//  ContentView.swift
//  reto 14
//
//  Created by Benjamin Rojo on 04/06/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            LightSwitchView()
        }
        .padding()
    }
}

struct LightSwitchView: View{
    @State private var light = false
    var body: some View{
        Button (action:{
            light.toggle()
        }){
            Image(systemName: "lightbulb.fill")
                .foregroundColor(light ? .yellow: .white)
        }
        Text(light ? "¡Luz encendida!" : "Luz apagada")
            .font(.headline)
            .padding(.top, 10)
    }
}
#Preview {
    ContentView()
}
