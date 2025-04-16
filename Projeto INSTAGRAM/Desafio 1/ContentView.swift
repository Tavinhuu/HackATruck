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
                    .padding(14)
                
                VStack{
                    HStack{
                        VStack{
                            Text("0")
                                .bold()
                            Text("Posts")
                                .font(.system(size: 15))
                        }
                        VStack{
                            Text("1560")
                                .bold()
                            Text("Seguidores")
                                .font(.system(size: 15))
                        }
                        VStack{
                            Text("100")
                                .bold()
                            Text("Seguindo")
                                .font(.system(size: 15))
                        }
                        .padding()
                        .padding(.bottom, 0)
                    }
                    
                }
            
            }
            VStack{
                HStack{
                    Text("Criador de conteúdo digital")
                        .font(.system(size: 15))
                        .padding(.horizontal, 20)
                        .opacity(0.5)
                    Spacer()
                }
                HStack{
                    Text("invinire te in propria psychedelic")
                        .font(.system(size: 15))
                        .padding(.horizontal, 20)
                    Spacer()
                }
                HStack{
                    Text("Ver traducao")
                        .bold()
                        .font(.system(size: 15))
                        .padding(.horizontal, 20)
                    Spacer()
                }
                HStack{
                    VStack{
                        Text("@tavinhuu  ▷  Take the power back - RATM")
                            .bold()
                            .opacity(0.5)
                            .font(.system(size: 15))
                            .padding(.horizontal, 20)
                            .padding(.bottom, 26)
                    }
                    Spacer()
                }
                
                Text("Seguir")
                    .foregroundStyle(.white)
                    .background(Rectangle()
                        .fill(.blue)
                        .opacity(1)
                        .cornerRadius(10)
                        .padding(.top, 4)
                        
                        .frame(width: 370, height: 50)
                    )

            }
        }
    }
}

#Preview {
    ContentView()
}
