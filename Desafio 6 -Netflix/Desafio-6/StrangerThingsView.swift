import SwiftUI

struct StrangerThingsView: View {
    
    @State private var fontsizegray: CGFloat = 15
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color.black]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea()
        .blur(radius: 0.3)
        .overlay(
            VStack {
                AsyncImage(url: URL(string: "https://ichef.bbci.co.uk/ace/ws/800/cpsprodpb/a805/live/c646a0d0-42c6-11ef-b74c-bb483a802c97.jpg.webp")) { image in
                    image
                        .image?.resizable()
                        .frame(width: 400, height: 220)
                }
                
                VStack{
                    Text("Stranger Things")
                        .bold()
                        .foregroundStyle(.white)
                        .padding(.top)
                        .padding(.leading, -180)
                        .font(.system(size: 25))
                    HStack{
                        Text("2022")
                            .foregroundStyle(.gray)
                            .font(.system(size: 15))
                        Image(systemName: "18.square")
                            .foregroundStyle(.red)
                        Text("4 Temporadas")
                            .foregroundStyle(.gray)
                            .font(.system(size: 15))
                        Image(systemName: "4k.tv")
                            .foregroundStyle(.gray)
                            
                    }
                    .padding(.bottom, 30)
                    .padding(.leading, -160)
                    VStack(spacing: 50){
                        Label("Assistir", systemImage: "play.fill")
                            .bold()
                            .foregroundStyle(.black)
                            .background(RoundedRectangle(cornerRadius: 20)
                                .frame(width: 380, height: 60)
                                .foregroundStyle(.white))
                        Label("Baixar T1:E1", systemImage: "square.and.arrow.down")
                            .bold()
                            .foregroundStyle(.white)
                            .background(RoundedRectangle(cornerRadius: 20)
                                .frame(width: 380, height: 60)
                                .foregroundStyle(.gray)
                                .opacity(0.3))
                        
                    }
                    VStack(spacing: 10){
                        Text("T1:E1 Capitulo um: O desaparecimento de Will Byers")
                            .foregroundStyle(.white)
                            .font(.system(size: 15))

                            .bold()
                        
                        Text("No caminho de volta para casa, will e aterrorizado por alguma coisa. Nao longe dali, um laboratorio secreto guarda um segredo sinistro.")
                            .foregroundStyle(.white)
                            .font(.system(size: 15))
                        
                        Text("Estrelando: Winona Ryder, David Harbour, Millie Bobby Brown, Noah Schnapp...")
                            .foregroundStyle(.gray)
                            .font(.system(size: 15))
                        
                        HStack(spacing: 20){
                            VStack(spacing: 3) {
                                Image(systemName: "plus")
                                    .foregroundStyle(.gray)
                                    .font(.system(size: 30))
                                Text("Minha Lista")
                                    .foregroundColor(.white)
                                    .font(.caption)
                            }
                            VStack(spacing: 3) {
                                Image(systemName: "hand.thumbsup.fill")
                                    .foregroundStyle(.gray)
                                    .font(.system(size: 30))
                                Text("Classificar")
                                    .foregroundColor(.white)
                                    .font(.caption)
                            }
                            VStack(spacing: 3) {
                                Image(systemName: "square.and.arrow.up")
                                    .foregroundStyle(.gray)
                                    .font(.system(size: 30))
                                Text("Compartilhar")
                                    .foregroundColor(.white)
                                    .font(.caption)
                            }
                            VStack(spacing: 3) {
                                Image(systemName: "square.and.arrow.down")
                                    .foregroundStyle(.gray)
                                    .font(.system(size: 30))
                                Text("Baixar")
                                    .foregroundColor(.white)
                                    .font(.caption)
                            }
                        }
                        .padding(.bottom)
                        
                        
                            VStack{
                                Rectangle()
                                    .fill(.gray)
                                    .frame(width: 800,height: 5)
                                HStack{
                                    Text("Episodios")
                                        .bold()
                                        .foregroundStyle(.white)
                                    Text("Colecao")
                                        .bold()
                                        .foregroundStyle(.white)
                                    Text("Trailers e mais")
                                        .bold()
                                        .foregroundStyle(.white)
                                    Text("Titulos se...")
                                        .bold()
                                        .foregroundStyle(.white)
                                    
                    
                                }
                                .padding(.bottom)
                               
                            }
                        }
                        
                        
                    
                    .padding(.top, 30)

                }
                
                }
            )
    }
}

#Preview {
    StrangerThingsView()
}
