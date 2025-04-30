import SwiftUI

struct ContentView: View {
    
    struct Song: Identifiable {
        var id: Int
        var name: String
        var artist: String
        var capa: String
        var songDuration: Double
    }

    var arrayMusicas = [
        Song(id: 1, name: "Wish You Were Here", artist: "Pink Floyd", capa: "https://upload.wikimedia.org/wikipedia/pt/b/b7/Wish_You_Were_Here.jpg", songDuration: 332),
        
        Song(id: 2, name: "Bohemian Rhapsody", artist: "Queen", capa: "https://upload.wikimedia.org/wikipedia/en/9/9f/Bohemian_Rhapsody.png", songDuration: 355), // 5:55
        
        Song(id: 3, name: "Hotel California", artist: "Eagles", capa: "https://akamai.sscdn.co/tb/letras-blog/wp-content/uploads/2019/09/cbf214b-capa-hotel-california-1024x1016.jpg", songDuration: 391), // 6:31
        
        Song(id: 4, name: "Smells Like Teen Spirit", artist: "Nirvana", capa: "https://img.migalhas.com.br/gf_Base/empresas/miga/imagens/2022/01/04/56c5333d-e60d-41b3-a635-cbaa6bd54487.jpg", songDuration: 301), // 5:01
        
        Song(id: 5, name: "Stairway to Heaven", artist: "Led Zeppelin", capa: "https://i0.wp.com/estilhacosdiscos.com.br/wp-content/uploads/2022/03/img_5014.jpeg?fit=1000%2C1000&ssl=1", songDuration: 482), // 8:02
        
        Song(id: 6, name: "Imagine", artist: "John Lennon", capa: "https://upload.wikimedia.org/wikipedia/pt/f/fb/Imagine_%C3%81lbum.jpg", songDuration: 183), // 3:03
        
        Song(id: 7, name: "Like a Rolling Stone", artist: "Bob Dylan", capa: "https://i.scdn.co/image/ab67616d0000b27341720ef0ae31e10d39e43ca2", songDuration: 369), // 6:09
        
        Song(id: 8, name: "Comfortably Numb", artist: "Pink Floyd", capa: "https://upload.wikimedia.org/wikipedia/pt/3/3b/Dark_Side_of_the_Moon.png", songDuration: 384) // 6:24
    ]

    
    var body: some View {
        
        
        NavigationStack{
            LinearGradient(gradient: Gradient(colors: [Color.gray,Color.black,Color.black]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
                .overlay(
                    
                    VStack(){
                        
                        AsyncImage(url: URL(string: "https://igormiranda.com.br/wp-content/uploads/2021/11/Pink-Floyd-Animals-capa.jpg")) { image in
                            image
                                .image?.resizable()
                                .frame(width: 250, height: 250)
                                .padding(.bottom, 20)
                        }
                        
                        
                        Text("HARD ROCK")
                            .bold()
                            .foregroundStyle(.white)
                            .font(.system(size: 30))
                            .padding(.leading, -170)
                        
                        Text("32h 46min")
                            .foregroundStyle(.gray)
                            .font(.system(size: 15))
                            .padding(.leading, -170)
                            .padding(.bottom, 10)
                        
                        Label("Tavin", systemImage: "person.circle")
                            .foregroundStyle(.white)
                            .font(.system(size: 15))
                            .padding(.leading, -170)
                        
                        HStack(spacing: 15){
                            Image(systemName: "arrow.down.circle")
                                .foregroundStyle(.gray)
                                .font(.system(size: 26))
                            
                            Image(systemName: "person.badge.plus")
                                .foregroundStyle(.gray)
                                .font(.system(size: 26))
                            
                            Image(systemName: "ellipsis")
                                .foregroundStyle(.gray)
                                .font(.system(size: 26))
                            
                            Spacer()
                            
                            Image(systemName: "arrow.2.circlepath")
                                .foregroundStyle(.green)
                                .font(.system(size: 26))
                            Image(systemName: "play.circle.fill")
                                .foregroundStyle(.green)
                                .font(.system(size: 50))
                            
                            
                        }
                        
                        .padding()
                        
                        
                        
                        ScrollView{
                            VStack{
                                ForEach(arrayMusicas){ musicas in
                                    NavigationLink(destination: SongDetails(song: musicas)){
                                        HStack (alignment: .center, spacing: 16){
                                            AsyncImage(url: URL(string: musicas.capa)) { image in image
                                                    .image?.resizable()
                                                    .frame(width: 80, height: 80)
                                                    .clipped()
                                            }
                                            
                                            
                                            VStack(alignment: .leading){
                                                Text(musicas.name)
                                                    .foregroundStyle(.white)
                                                Text(musicas.artist)
                                                    .foregroundStyle(.gray)
                                            }
                                            
                                            Spacer()
                                            
                                        }
                                        
                                        .padding(.horizontal, 30)
                                    }
                                }
                            }
                        }
                        
                        
                        
                    }
                    
                        .toolbarBackground(.hidden, for: .navigationBar)
                        .navigationBarBackButtonHidden()
                )
        }
    }
}
#Preview {
    ContentView()
}
