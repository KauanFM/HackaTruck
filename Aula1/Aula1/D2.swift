//
//  D2.swift
//  Aula1
//
//  Created by Student14 on 31/08/23.
//

import SwiftUI

struct D2: View {
    var body: some View {
        VStack{
            Image("caminhao")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .offset(y: 11)
                .padding(-14)
    
            Image("caminhao")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.gray, lineWidth: 4)
                }
                .offset(y: 60)
            
            Text("HackaTruck")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.blue)
                .offset(y: -140)
            
            Rectangle()
                .frame(maxWidth: 260 )
                .frame(maxHeight: 180)
                .offset(y: 70)
            
            HStack{
                Text("Maker")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.yellow)
                    .offset(y: -50)
                
                Text("Space")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.red)
                    .offset(y: -50)
            }
            
        }
        
    }
}

struct D2_Previews: PreviewProvider {
    static var previews: some View {
        D2()
    }
}
