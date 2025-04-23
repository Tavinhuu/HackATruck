import SwiftUI

struct ContentView: View {
    
    @State private var num1: Double = 0        // Distância
    @State private var num2: Double = 0        // Tempo
    @State private var resultado: Double = 0   // Velocidade média
    @State private var animal: String = ""     // Animal representando a velocidade
    @State private var animalore: String = ""
    @State private var corfundo: Color = .red  // Cor de fundo
    @State private var fieldvisiveis = true    // Controla a exibição dos campos

    var body: some View {
        corfundo
            .ignoresSafeArea()
            .overlay(
                VStack {
                    // Campos de entrada
                    if fieldvisiveis {
                        // Distância
                        TextField("Digite a distância (km)", value: $num1, format: .number)
                            .keyboardType(.decimalPad)
                            .frame(width: 260, height: 50)
                            .padding(.leading)
                            .background(RoundedRectangle(cornerRadius: 25)
                                .fill(.white)
                                .opacity(0.8))
                            .foregroundColor(.black)
                            .padding()
                        
                        if num1 == 0 {
                            Text("Informe a distância")
                                .bold()
                                .foregroundStyle(.white)
                        } else {
                            // Tempo
                            TextField("Digite o tempo (h)", value: $num2, format: .number)
                                .keyboardType(.decimalPad)
                                .frame(width: 260, height: 50)
                                .padding(.leading)
                                .background(RoundedRectangle(cornerRadius: 25)
                                    .fill(.white)
                                    .opacity(0.8))
                                .foregroundColor(.black)
                                .padding()
                            
                            if num2 == 0 {
                                Text("Informe o tempo")
                                    .bold()
                                    .foregroundStyle(.white)
                            } else {
                                // Botão Calcular
                                Button(action: {
                                    resultado = num1 / num2
                                    fieldvisiveis = false
                                    
                                    // Avaliação da velocidade
                                    switch resultado {
                                    case ..<9.9:
                                        animal = "Tartaruga"
                                        animalore = "As tartarugas são conhecidas por serem muito lentas, com uma velocidade média de até 0,5 km/h em terra. Apesar da fama, na água elas nadam mais rápido! Simbolizam paciência e persistência."
                                        withAnimation(.bouncy(duration: 4)){
                                            corfundo = .green
                                        }
                                    case 9.9..<29.9:
                                        animal = "Elefante"
                                        animalore = "Mesmo sendo enormes, os elefantes podem alcançar até 25 km/h ao correr! Eles não conseguem pular, mas compensam com força e resistência. São animais inteligentes e sociais."
                                        withAnimation(.bouncy(duration: 4)){
                                            corfundo = .blue
                                        }
                                    case 29.9..<69.9:
                                        animal = "Avestruz"
                                        animalore = "É a ave mais rápida do mundo, correndo até 70 km/h! Apesar de não voar, o avestruz usa suas pernas fortes para escapar de predadores com facilidade."
                                        withAnimation(.bouncy(duration: 4)){
                                            corfundo = .orange
                                        }
                                    case 69.9..<89.9:
                                        animal = "Leão"
                                        animalore = "O rei da selva pode atingir até 80 km/h em curtas distâncias, mas só por alguns segundos. Ele usa essa explosão de velocidade para caçar."
                                        withAnimation(.bouncy(duration: 4)){
                                            corfundo = .yellow
                                        }
                                    default:
                                        animal = "Guepardo"
                                        animalore = "É o animal terrestre mais rápido do mundo, atingindo até 120 km/h em poucos segundos. Sua aceleração é comparável a de carros esportivos, mas por apenas 20 a 30 segundos."
                                        withAnimation(.bouncy(duration: 4)){
                                            corfundo = .purple
                                        }
                                    }
                                }) {
                                    Text("Calcular")
                                        .bold()
                                        .foregroundStyle(.white)
                                        .frame(width: 260, height: 50)
                                        .background(Rectangle()
                                            .fill(.black)
                                            .cornerRadius(30))
                                }
                                .padding(.top)
                            }
                        }
                    } else {
                        // Resultado final
                        VStack(spacing: 16) {
                            Text("Sua velocidade média é:")
                                .foregroundStyle(.white)
                                .bold()
                            
                            Text("\(resultado, specifier: "%.2f") km/h")
                                .font(.system(size: 50))
                                .bold()
                                .foregroundStyle(.white)
                            
                            Text("Você é tão rápido quanto um(a) **\(animal)**!")
                                .foregroundStyle(.white)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal)
                            
                            Text("\(animalore)")
                                .foregroundStyle(.white)
                                .multilineTextAlignment(.center)
                                .padding(.bottom, 20)
                            // Botão para reiniciar
                            Button("Calcular novamente") {
                                num1 = 0
                                num2 = 0
                                resultado = 0
                                animal = ""
                                fieldvisiveis = true
                                corfundo = .red
                            }
                            .padding()
                            .background(Color.white.opacity(0.8))
                            .cornerRadius(20)
                            .foregroundColor(.black)
                        }
                        .padding()
                    }
                }
            )
    }
}

#Preview {
    ContentView()
}
