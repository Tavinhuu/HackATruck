
import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            InicioView()
                .tabItem {
                    Label("Início", systemImage: "house.fill")
                }

            StrangerThingsView()
                .tabItem {
                    Label("Novidades", systemImage: "newspaper")
                }

            NovidadesView()
                .tabItem {
                    Label("Minha Lista", systemImage: "square")
                }
        }
        .onAppear(){
            UITabBar.appearance().barTintColor = UIColor(.indigo)
        }
        
        
        .accentColor(.white)
        .background(Color.black.ignoresSafeArea())
    }
}

#Preview {
    ContentView()
}
