//
//  Roulette.swift
//  Good Sips
//
//  Created by Katelin Vincent on 2/28/22.
//

import SwiftUI

struct Roulette: View {
    var body: some View {
            ZStack(alignment: .top){
                VStack {
                    Color(red: 116/255, green: 149/255, blue: 154/255)// top BK color
                        .edgesIgnoringSafeArea(.top)
                        .frame(height: 44.0)
                }
                VStack(alignment: .center, spacing: 0){ // Good sips logo/bar photo/navigation buttons
                    HStack {
                        Spacer()
                        Image("Good Sips Icons - words") // good sips icon at top
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 40, alignment: .center)
                        Spacer()
                    }
                    
                    ScrollView {
                        
                        
// JORDAN - add roulette randomizing
// May or may not need this view - basically need roulette button to link to random drink profile
                        
                    }
                }
            }
    }
}

struct Roulette_Previews: PreviewProvider {
    static var previews: some View {
        Roulette()
    }
}
