//
//  D1.swift
//  Aula1
//
//  Created by Student14 on 31/08/23.
//

import SwiftUI

struct D1: View {
    var body: some View {
        VStack{
            Image("caminhao")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(10)
            
            Text("HackaTruck")
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(Color.blue)
            HStack{
                Text("Maker")
                    .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.yellow)
                Text("Space")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.red)
            }
            
            
        }
    }
    
    struct D1_Previews: PreviewProvider {
        static var previews: some View {
            D1()
        }
    }
}
