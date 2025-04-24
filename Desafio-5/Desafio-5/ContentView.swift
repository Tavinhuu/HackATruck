//
//  ContentView.swift
//  Desafio-5
//
//  Created by Turma02-11 on 24/04/25.
//

import SwiftUI



struct ContentView: View {

    
    var body: some View {
            TabView{

                rosaview()
                    .badge(2)
                    .tabItem {
                        Label("Rosa", systemImage: "paintbrush")}
                AzulView()
                    .tabItem {
                        Label("Azul", systemImage: "paintbrush")}
                CinzaView()
                    .tabItem {
                        Label("Cinza", systemImage: "paintbrush")}
                
            }
            .onAppear(){
                UITabBar.appearance().barTintColor = UIColor(.indigo)
                UITabBar.appearance().backgroundColor = UIColor(.black).withAlphaComponent(0.6)
            }
            
            
    }
}

#Preview {
    ContentView()
}
