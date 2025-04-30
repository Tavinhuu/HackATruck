//
//  SongDetails.swift
//  Desafio-7
//
//  Created by Turma02-11 on 30/04/25.
//

import SwiftUI

struct SongDetails: View {
    
    var song: ContentView.Song
    @State private var timer: Double = 0
    
    
    func formTime(_ time: Double) -> String{
        let minutes = Int(time) / 60
        let seconds = Int(time) % 60
        return String (format: "%02d:%02d", minutes, seconds)
        
    }
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.gray,Color.black,Color.black]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
                .overlay(
                    
                    
                    ScrollView{
                        VStack(spacing: 60){
                            HStack(alignment: .center, spacing: 80){
                                NavigationLink(destination: ContentView()){
                                    Image(systemName: "arrow.backward")
                                        .foregroundStyle(.white)
                                        .bold()
                                }
                                VStack(){
                                    Text("TOCANDO DA PLAYLIST")
                                        .foregroundStyle(.white)
                                    Text("Hard Rock")
                                        .foregroundStyle(.white)
                                        .bold()
                                }
                                
                                Image(systemName: "ellipsis")
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                            
                            
                            VStack{
                                AsyncImage(url: URL(string: song.capa)) { image in
                                    image
                                        .image?.resizable()
                                        .frame(width: 250, height: 250)
                                        .padding(.bottom, 20)
                                }
                                
                                
                                HStack(alignment: .center, spacing: 16){
                                    VStack(alignment: .leading){
                                        Text(song.name)
                                            .foregroundStyle(.white)
                                            .font(.system(size: 20))
                                            .bold()
                                        
                                        Text(song.artist)
                                            .foregroundStyle(.gray)
                                            .font(.system(size: 20))
                                            .bold()
                                    }
                                    Spacer()
                                    Image(systemName: "checkmark.circle.fill")
                                        .foregroundStyle(.green)
                                        .font(.system(size: 30))
                                        .bold()
                                    
                                    
                                }
                                .padding(20)
                                
                                Slider(value: $timer, in: 0.3...song.songDuration, step: 5)
                                    .accentColor(.white)
                                    .padding(.horizontal)
                                HStack{
                                    Text(formTime(timer))
                                        .foregroundStyle(.gray)
                                        .font(.system(size: 15))
                                        .bold()
                                    Spacer()
                                    Text(formTime(song.songDuration))
                                        .foregroundStyle(.gray)
                                        .font(.system(size: 15))
                                        .bold()
                                }
                                .padding(.horizontal)
                                
                                HStack(spacing: 40){
                                    Image(systemName: "shuffle")
                                        .foregroundStyle(.green)
                                        .font(.system(size: 20))
                                    
                                    Image(systemName: "backward.end.fill")
                                        .foregroundStyle(.white)
                                        .font(.system(size: 30))
                                    
                                    Image(systemName: "play.circle.fill")
                                        .foregroundStyle(.white)
                                        .font(.system(size: 80))
                                    Image(systemName: "forward.end.fill")
                                        .foregroundStyle(.white)
                                        .font(.system(size: 30))
                                    Image(systemName: "arrow.2.squarepath")
                                        .foregroundStyle(.white)
                                        .font(.system(size: 20))
                                }
                                
                                HStack(spacing: 20){
                                    
                                    Image(systemName: "laptopcomputer.and.iphone")
                                        .foregroundStyle(.white)
                                        .font(.system(size: 20))
                                        .bold()
                                    Spacer()
                                    Image(systemName: "square.and.arrow.up")
                                        .foregroundStyle(.white)
                                        .font(.system(size: 20))
                                        .bold()
                                    Image(systemName: "line.3.horizontal")
                                        .foregroundStyle(.white)
                                        .font(.system(size: 20))
                                        .bold()
                                    
                                }
                                .padding(.top, 20)
                                .padding(.horizontal)
                                
                            }
                            
                            
                            ZStack{
                                VStack(spacing: 50){
                                    
                                    Text("I'm in love when we are\nsmokin'that la-la-la-la\n\nI'm in love when are we \nsmokin'that la-la-la\n\nI'm in love when are we \nsmokin'that la-la-la\n\nI'm in love when are we \nsmokin'that la-la-la")
                                        .foregroundStyle(.white)
                                        .font(.system(size: 30))
                                        .bold()
                                    
                                }
                                .zIndex(1)
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(.red)
                                    .frame(width: 350, height: 400)
                                
                            }
                            
                            ZStack{
                                Text("Créditos")
                                    .foregroundStyle(.white)
                                
                                    .font(.system(size: 21, weight: .bold))
                                    .zIndex(1)
                                    .position(CGPoint(x: 85, y: 40))
                                HStack(){
                                    VStack(alignment: .leading){
                                        Text(song.artist)
                                            .foregroundStyle(.white)
                                            .font(.system(size: 21))
                                        Text("Artista principal")
                                            .foregroundStyle(.gray)
                                            .font(.system(size: 21))
                                    }
                                    
                                    Spacer()
                                    Text("Seguir")
                                        .foregroundStyle(.white)
                                        .padding(8)
                                        .clipShape(Capsule())
                                        .overlay(
                                            Capsule()
                                                .stroke(Color.gray, lineWidth: 2))
                                }
                                .padding(.horizontal, 45)
                                
                                .zIndex(1)
                                
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(.gray)
                                    .opacity(0.4)
                                    .frame(width: 350, height: 200)
                            }
                            
                            
                            
                            
                            
                        }
                        
                        .toolbarBackground(.hidden, for: .navigationBar)
                        .navigationBarBackButtonHidden()
                    }
                )
        }
    }
}

#Preview {
    SongDetails(song: ContentView.Song(id: 1, name: "Wish You Were Here", artist: "Pink Floyd", capa: "https://upload.wikimedia.org/wikipedia/pt/b/b7/Wish_You_Were_Here.jpg", songDuration: 332))
}
