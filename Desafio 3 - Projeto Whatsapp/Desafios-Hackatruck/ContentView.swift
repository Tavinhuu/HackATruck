import SwiftUI

struct ContentView: View {
    @State private var mensagem = "Digite sua mensagem..."
    @State private var alerta = false
    @State private var showAlert = false
    @State private var mensagemEnviada = false
    
    var body: some View {
        ZStack {
            Image("wpp")
                .resizable()
                .frame(width: 400, height: 880)
            
            ZStack{
                Rectangle()
                    .fill(.black)
                    .frame(width: 400, height: 100)
                    .opacity(0.5)
                Circle()
                    .fill(.green)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 60)
                    .padding(.leading, -200)
                VStack{
                    Text("Malu")
                        .bold()
                        .foregroundStyle(.white)
                        .font(.system(size: 14))
                        .padding(.leading, -100)
                    Text("visto por último hoje as 22:30")
                        .foregroundStyle(.white)
                        .font(.system(size: 12))
                        .padding(.leading, -30)
                }
                
                Text("")
                    .foregroundStyle(.white)
                
            }
            .padding(.bottom, 750)
            if mensagem.isEmpty {
            } else{
                if (mensagemEnviada == true){
                    Text("\(mensagem)")
                        .frame(width: 260, height: 50)
                        .padding(.leading)
                        .background(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .fill(.green))
                        .foregroundColor(.white)
                        .padding(.top, 500)
                        .padding(.leading, 90)
                }
            }
            HStack{

                TextField("Digite aqui sua mensagem...", text: $mensagem)
                    .frame(width: 260, height: 50)
                    .padding(.leading)
                    .background(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .fill(.black)
                        .opacity(0.8))
                    .foregroundColor(.white)
                    .padding()
                
                
                Button(action: {
                    alerta = true
                    mensagemEnviada = true
                }) {
                    Text("⇨")
                        .bold()
                        .foregroundStyle(.white)
                        .background(Circle()
                            .fill(.green)
                            .frame(width: 50, height: 50))
                }
                .alert(isPresented: $alerta){
                    Alert(title: Text("Mensagem"), message: Text("Mensagem enviada"))
                }
            
            }
            .padding(.top, 700)
        }
    }
}

#Preview {
    ContentView()
}
