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
            LightSwitchView1()
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
struct LightSwitchView1: View{
    @State private var light1 = false
    var body: some View{
        Button (action:{
            light1.toggle()
        }){
            Image(systemName: "lightbulb.fill")
                .foregroundColor(light1 ? .yellow: .white)
        }
        Text(light1 ? "¡Luz encendida!" : "Luz apagada")
            .font(.headline)
            .padding(.top, 10)
    }
}
#Preview {
    ContentView()
}
