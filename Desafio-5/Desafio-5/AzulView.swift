//
//  AzulView.swift
//  Desafio-5
//
//  Created by Turma02-11 on 24/04/25.
//

import SwiftUI

struct AzulView: View {
    
    @State private var corfundo: Color = .blue
    
    var body: some View {
    
        corfundo
            .ignoresSafeArea()
            .overlay(
        
        Image(systemName: "paintbrush")
            .foregroundStyle(.blue)
            .font(.system(size: 250))
            .background(Circle()
                .frame(width: 300, height: 300))
        )
    }
}

#Preview {
    AzulView()
}
