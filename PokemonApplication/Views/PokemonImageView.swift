//
//  PokemonImageView.swift
//  PokemonApplication
//
//  Created by Sei Mouk on 15/9/24.
//

import SwiftUI
import SDWebImageSwiftUI

struct PokemonImageView: View {
    
    var url: String = ""
    var image: String = ""
    @State var imageConvert: String = ""
    
    var body: some View {
        VStack{
            WebImage(url: URL(string: imageConvert))
        }
        .onAppear{
            SpritesViewModel.shared.fetchData(url: url) { sprite in
                self.imageConvert = sprite.back_default
            }
        }
    }
}

#Preview {
    PokemonImageView()
}
