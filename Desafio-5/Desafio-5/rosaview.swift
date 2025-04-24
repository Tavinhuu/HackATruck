//
//  rosaview.swift
//  Desafio-5
//
//  Created by Turma02-11 on 24/04/25.
//

import SwiftUI

struct rosaview: View {
    @State private var corfundo: Color = .pink
    
    
    var body: some View {
        
        corfundo
            .ignoresSafeArea()
            .overlay(
        
                Image(systemName: "paintbrush")
                    .foregroundStyle(.pink)
                    .font(.system(size: 250))
                    .background(Circle()
                        .frame(width: 300, height: 300))
        )
    }
}

#Preview {
    rosaview()
}
