//
//  ContentView.swift
//  Good Sips
//
//  Created by Katelin Vincent on 2/25/22.
//

import SwiftUI


struct ContentView: View {
    
    @State var searchText = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Spacer().frame(height: 44.0)
                    HStack {
                        NavigationLink(destination: ProfileSettings()) {
                            Image("profile icon") // good sips icon at top
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 30, height: 30, alignment: .trailing)
                        }
                        Spacer()
                        Image("Good Sips Icons - words") // good sips icon at top
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 40, alignment: .center)
                        Spacer()
                        NavigationLink(destination: DrinkSubmission()) {
                            Image("add icon") // good sips icon at top
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 30, height: 30, alignment: .trailing)
                        }
                    }
                    .background(Color(red: 116/255, green: 149/255, blue: 154/255))
                    Spacer()
                }
                .edgesIgnoringSafeArea(.top)
                HStack{ // Search Bar - MASON: make search function
                    Image("search bar icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                    TextField("Search for Drinks or Ingredients", text: $searchText)
                        .padding(8.0)
                }
                .background()
                VStack {
                    
                    Spacer()
                    HStack{ // Search Bar - MASON: make search function
                        Image("search bar icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 25)
                        TextField("Search for Drinks or Ingredients", text: $searchText)
                            .padding(8.0)
                    }
                    .background()
                    Spacer()
                                     //   VStack {
                                            HStack {
                                                VStack {

                                                    NavigationLink(destination: MasterListBeer()){
                                                        Text("BEER")
                                                            .frame(width: 150, height: 150)
                                                            .background(Color(red: 116/255, green: 149/255, blue: 154/255))
                                                            .font(.system(size: 25))
                                                            .foregroundColor(Color.white)
                                                            .padding()
                                                            .cornerRadius(60)
                                                    }
                    
                                                    NavigationLink(destination: MasterListMocktail()){
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
                                                    NavigationLink(destination: MasterListLiquor()){
                                                        Text("LIQUOR")
                                                            .frame(width: 150, height: 150)
                                                            .background(Color(red: 116/255, green: 149/255, blue: 154/255))
                                                            .font(.system(size: 25))
                                                            .foregroundColor(Color.white)
                                                            .padding()
                                                            .cornerRadius(60)
                                                            }
                    
                                                    NavigationLink(destination: MasterListWine()){
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
                                            NavigationLink(destination: Roulette()){
                                                Text("ROULETTE")
                                                    .frame(width: 340, height: 75)
                                                    .background(Color(red: 116/255, green: 149/255, blue: 154/255))
                                                    .font(.system(size: 25))
                                                    .foregroundColor(Color.white)
                                                    .padding()
                                                    .cornerRadius(60)
                                            }
                                            NavigationLink(destination: Featured()){
                                                Text("FEATURED")
                                                    .frame(width: 340, height: 75)
                                                    .background(Color(red: 116/255, green: 149/255, blue: 154/255))
                                                    .font(.system(size: 25))
                                                    .foregroundColor(Color.white)
                                                    .padding()
                                                    .cornerRadius(60)
                                                }
                    
                                            }
                                        .background{
                                            Image("Bar photo")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            }
                }
                .navigationBarTitleDisplayMode(.inline)
            }
        }

        }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

