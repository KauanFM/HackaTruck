//
//  D1.swift
//  Aula2
//
//  Created by Student14 on 01/09/23.
//

import SwiftUI



struct D1: View {
    @State var peso: String = ""
    @State var altura: String = ""
    @State var imc: String = ""
    @State var cor: Color = .white
    var body: some View {

            VStack {
                Text("Calculadora de IMC")
                    .font(.title)
                
                TextField("Peso", text: $peso)
                    .multilineTextAlignment(.center)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5)
                    .frame(width: 365)
                
                TextField("Altura", text: $altura)
                    .multilineTextAlignment(.center)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5)
                    .frame(width: 365)
                
                Button ("Calcular") {
                    if let ps = Double(peso), let alt = Double(altura) {
                        let calculo = ps / (alt * alt)
                    
                        if calculo <= 18.5 {
                            imc = "Baixo Peso"
                            cor = Color("Baixopeso")
                        } else if calculo <= 24.99 {
                            imc = "Normal"
                            cor = Color("Normal")
                        } else if calculo <= 29.99 {
                            imc = "Sobre Peso"
                            cor = Color("Sobrepeso")
                        } else  {
                            imc = "Obesidade"
                            cor = Color("Obesidade")
                        }
                    }
                }
                .padding()
                .foregroundColor(Color.white)
                .background(Color.blue.cornerRadius(10))
                
                
                
                Spacer()
                
                VStack {
                    Text("\(imc)")
                        .font(.title)
                        .padding()
                        .frame(width: 200)
                        
                }
                Spacer()
                VStack {
                    Image("tabela-IMC")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 450)
                        .shadow(radius: 10)
                    
                }
            }
            .background(cor)
    }
        
}


struct D1_Previews: PreviewProvider {
    static var previews: some View {
        D1()
    }
}
