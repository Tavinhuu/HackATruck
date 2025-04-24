//
//  CinzaView.swift
//  Desafio-5
//
//  Created by Turma02-11 on 24/04/25.
//

import SwiftUI

struct CinzaView: View {
    
    @State private var corfundo: Color = .gray
    
    var body: some View {
       
    corfundo
            .ignoresSafeArea()
            .overlay(
        
            Image(systemName: "paintbrush")
                .foregroundStyle(.gray)
                .font(.system(size: 250))
                .background(Circle()
                    .frame(width: 300, height: 300))
        )
    }
}

#Preview {
    CinzaView()
}
