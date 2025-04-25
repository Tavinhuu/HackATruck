import SwiftUI

struct InicioView: View {
    
    @State private var fontsizegray: CGFloat = 15
    
    var body: some View {
        NavigationView {
            LinearGradient(gradient: Gradient(colors: [Color.black]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .ignoresSafeArea()
            .blur(radius: 0.3)
            .overlay(
                VStack {
                    HStack {
                        Text("Para Gustavo")
                            .foregroundStyle(.white)
                            .bold()
                            .padding(.trailing, 170)
                            .font(.system(size: 22))
                        
                        Image(systemName: "square.and.arrow.up")
                            .foregroundStyle(.white)
                            .bold()
                            .font(.system(size: 20))
                        
                        Image(systemName: "magnifyingglass")
                            .foregroundStyle(.white)
                            .bold()
                            .font(.system(size: 25))
                    }
                    .padding(.top, 20)
                    
                    HStack(spacing: 10) {
                        ForEach(["Séries", "Filmes", "Categorias"], id: \.self) { item in
                            Text(item)
                                .font(.system(size: 18))
                                .foregroundStyle(.gray)
                                .background(Color.black)
                                .bold()
                                .padding(.horizontal, 15)
                                .padding(.vertical, 8)
                                .clipShape(Capsule())
                                .overlay(
                                    Capsule()
                                        .stroke(Color.gray, lineWidth: 2)
                                )
                        }
                    }
                    .padding(.leading, -50)
                    .padding(.top, 20)
                    .padding(.bottom, 20)
                    
                    ZStack {
                        AsyncImage(url: URL(string: "https://img.elo7.com.br/product/zoom/3041513/big-poster-serie-stranger-things-netflix-lo002-90x60-cm-presente-geek.jpg?_gl=1*c65ui0*_gcl_au*MTI0ODUxNzU5OC4xNzQ1NTM0NzY4*_ga*NzI3NDQxNzk5LjE3NDU1MzQ3Njg.*_ga_22YVRK2WCW*MTc0NTUzNDc2OC4xLjEuMTc0NTUzNDc5NS4zMy4wLjE0OTA4MzUyNzI.")) { image in
                            image
                                .image?.resizable()
                                .frame(width: 350, height: 500)
                                .mask(
                                    LinearGradient(gradient: Gradient(colors: [Color.black.opacity(1), Color.black.opacity(1), Color.black.opacity(0)]), startPoint: .top, endPoint: .bottom)
                                )
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(.gray, lineWidth: 2)
                                )
                        }

                        VStack {
                            Text("Ficção científica • Terror • Suspense")
                                .foregroundStyle(.white)
                                .font(.system(size: fontsizegray))
                                .padding(.bottom, 20)
                            
                            HStack(spacing: 50) {
                                NavigationLink(destination: StrangerThingsView()) {
                                    Label("Assistir", systemImage: "play.fill")
                                        .bold()
                                        .foregroundStyle(.black)
                                        .font(.system(size: fontsizegray))
                                        .background(
                                            RoundedRectangle(cornerRadius: 10)
                                                .fill(.white)
                                                .frame(width: 120, height: 50)
                                        )
                                }
                                
                                Label("Minha lista", systemImage: "plus")
                                    .bold()
                                    .foregroundStyle(.white)
                                    .font(.system(size: fontsizegray))
                                    .background(
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(.gray)
                                            .opacity(0.5)
                                            .frame(width: 120, height: 50)
                                    )
                            }
                        }
                        .padding(.top, 350)
                    }
                    
                    Text("Continuar assistindo como Gustavo")
                        .foregroundStyle(.white)
                        .bold()
                        .padding(.top)
                        .padding(.leading, -70)
                        .padding(.bottom, 30)
                }
                .padding(.horizontal, 10)
            )
        }
    }
}

#Preview {
    InicioView()
}
