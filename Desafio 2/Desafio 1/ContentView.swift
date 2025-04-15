//
//  ContentView.swift
//  Desafio 1
//
//  Created by Turma02-11 on 15/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Image("imagem")
                    .resizable()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .padding(40)
                VStack{
                    Text("Texto 1 - Teste desafio")
                        .foregroundStyle(.red)
                    Text("Texto 2 - Teste")
                        .foregroundStyle(.blue)
                    Text("Texto 3")
                        .foregroundStyle(.green)
                    
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
