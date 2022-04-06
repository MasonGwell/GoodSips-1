//
//  Featured.swift
//  Good Sips
//
//  Created by Katelin Vincent on 2/28/22.
//

import SwiftUI

struct Featured: View {
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Spacer().frame(height: 44.0)
                    HStack {
                        Spacer()
                        Image("Good Sips Icons - words") // good sips icon at top
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 40, alignment: .center)
                        Spacer()
                    }
                    .background(Color(red: 116/255, green: 149/255, blue: 154/255))
                    Spacer()
                }
                .edgesIgnoringSafeArea(.top)
                .background()
                VStack {
                    
                    Spacer()
                    .background()
                    Spacer()
                            ScrollView{
                                // Can embed lines 27-35 in for loop and display 10 random drinks - i reccomend putting name on left and a picture on right (i can help w formatting)
                                NavigationLink(destination: DrinkProfile()){
                                   Text("Drink name")// put drink name here - linked to drinik profile - gonna have to act as variable
                                    Spacer()
                                }.padding()

                                Divider()
                                .background(Color(.systemGray4))
                                .padding(.leading)
                                // JORDAN - add drink randomizer here
                            }
                    }
                    .navigationBarTitleDisplayMode(.inline)

            }
        }
    }
}

struct Featured_Previews: PreviewProvider {
    static var previews: some View {
        Featured()
    }
}
