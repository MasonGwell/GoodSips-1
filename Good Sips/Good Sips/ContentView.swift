//
//  ContentView.swift
//  Good Sips
//
//  Created by Katelin Vincent on 2/25/22.
//

import SwiftUI
/*
 CUSTOM COLOR VARS
extension Color {
static let goodBlue = Color(red: 73/255, green: 83/255, blue: 113/255)
 static let goodDGreen = Color(red: 116/255, green: 149/255, blue: 154/255)
 static let goodLGreen = Color(red: 152/255, green: 180/255, blue: 170/255)
 static let yellow = Color(red: 241/255, green: 224/255, blue: 172/255)
}*/

/*
 NOTES:
 try to get custom colors
 
 */
struct ContentView: View {
    
    @State var searchText = ""
    
    var body: some View {
        ZStack(alignment: .top){
            VStack {
                Color(red: 116/255, green: 149/255, blue: 154/255)// top BK color
                    .edgesIgnoringSafeArea(.top)
                Color(red: 1, green: 1, blue: 1) // bottom BK color
                    }
            
            VStack(alignment: .center, spacing: 0){ // Good sips logo/bar photo/navigation buttons
                Image("Good Sips Icons - words") // good sips icon at top
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 40
                , alignment: .center)
                
                HStack(){ // Search Bar
                    TextField("Search for Drinks or Ingredients", text: $searchText)
                        .background(Color(.white))
                        .aspectRatio(contentMode: .fit)
                        
                    }
                
                ZStack {     // list buttons
                    Image("Bar photo") // bar photo
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    .frame(width: 410, height: 750, alignment: .center)
                    
                    VStack {
                    
                    HStack {
                        VStack {
                            Button(action: {}) { // Beer Button
                                Text("BEER")
                                    .frame(width: 150, height: 150)
                                    .background(Color(red: 116/255, green: 149/255, blue: 154/255))
                                    .font(.system(size: 25))
                                    .foregroundColor(Color.white)
                                    .padding()
                                    .cornerRadius(60)
                                                }
                            
                            Button(action: {}) { // Beer Button
                                Text("MOCKTAILS")
                                    .frame(width: 150, height: 150)
                                    .background(Color(red: 116/255, green: 149/255, blue: 154/255))
                                    .font(.system(size: 25))
                                    .foregroundColor(Color.white)
                                    .padding()
                                    .cornerRadius(60)
                                                }
                        }
                        VStack {
                            Button(action: {}) { // Beer Button
                                Text("LIQUOR")
                                    .frame(width: 150, height: 150)
                                    .background(Color(red: 116/255, green: 149/255, blue: 154/255))
                                    .font(.system(size: 25))
                                    .foregroundColor(Color.white)
                                    .padding()
                                    .cornerRadius(60)
                                                }
                            
                            Button(action: {}) { // Beer Button
                                Text("WINE")
                                    .frame(width: 150, height: 150)
                                    .background(Color(red: 116/255, green: 149/255, blue: 154/255))
                                    .font(.system(size: 25))
                                    .foregroundColor(Color.white)
                                    .padding()
                                    .cornerRadius(60)
                                                }
                        }
                        
                    }
                        
                        Button(action: {}) {
                            Text("ROULETTE")
                                .frame(width: 340, height: 75)
                                .background(Color(red: 116/255, green: 149/255, blue: 154/255))
                                .font(.system(size: 25))
                                .foregroundColor(Color.white)
                                .padding()
                                .cornerRadius(60)
                                            }
                        Button(action: {}) {
                            Text("FEATURED")
                                .frame(width: 340, height: 75)
                                .background(Color(red: 116/255, green: 149/255, blue: 154/255))
                                .font(.system(size: 25))
                                .foregroundColor(Color.white)
                                .padding()
                                .cornerRadius(60)
                                            }
                    }

            }
                HStack{ // navigation buttons
                    Button(action: {}) { // search button
                        Image("search bar icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 125, height: 40
                                   , alignment: .center)
                            .background(Color.white)
                                        }
                    
                    Button(action: {}) {
                        Image("My sips icon") // sips button
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 125, height: 40
                            )
                            .background(Color.white)
                                        }
                    
                    Button(action: {}) {
                        Image("bar tabs icon") // bar tabs icon
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 125, height: 40
                            )
                        .background(Color.white)
                                        }
                        }
    }
}
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

