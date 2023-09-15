//
//  Photos.swift
//  Aula3
//
//  Created by Student14 on 04/09/23.
//

import SwiftUI

struct Photos: View {
    private var imageList = [
        
        "hare.fill",
        "tortoise.fill",
        "lizard.fill",
        "bird.fill"
    ]
    var body: some View {
        ScrollView(showsIndicators: false){
            ForEach(imageList, id: \.self) { index in
                Image(systemName: "\(index)")
                    .font(.system(size: 150))
                    .padding()
            }
        }
    }
}

struct Photos_Previews: PreviewProvider {
    static var previews: some View {
        Photos()
    }
}
