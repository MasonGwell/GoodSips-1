//
//  ContentView.swift
//  Good Sips
//
//  Created by Katelin Vincent on 2/25/22.
//

import SwiftUI
import Foundation
import UIKit


struct ContentView: View {
    
    @State var searchText = ""
    
    
    init(){
    Webservice().getAllDriks{
        print($0)
    }//This simply prints API data to the console to make sure we are actually reading things in
    //Needed only for testing purposes
        
    /*
     **The below code displays the API data in the form of a list.
     .title can be swapped out with other variables created in the DrinkListViewModel
     ^Katelin I believe you already have a View Model you can use for this?
     If you do you can either replace the content I have in DrinkListViewModel with the content you have, or you can remove the DrinkListViewModel file, and replace DrinkListViewModel in the code below with the file name of your existing file.
     
     @State var model = DrinkListViewModel()
     
     var body: some View{
        List(model.drinks) { post in
        Test(drink.title)
        }
        }
     */
        
        
    }
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

                .background()
                VStack {
                    
                    Spacer()
                   
                        NavigationLink(destination: DrinkUIView())
                        {
                            Text("Search Database")
                                .frame(width: 340, height: 75)
                                .background(Color(red: 116/255, green: 149/255, blue: 154/255))
                                .font(.system(size: 25))
                                .foregroundColor(Color.white)

            
                        }
                    .background()
                    Spacer()

                                            HStack {
                                                Spacer()
                                                VStack {
                                                    Spacer()
                                                    NavigationLink(destination: MasterListBeer()){
                                                        Text("BEER")
                                                            .frame(width: 150, height: 150)
                                                            .background(Color(red: 116/255, green: 149/255, blue: 154/255))
                                                            .font(.system(size: 25))
                                                            .foregroundColor(Color.white)
                                                            .cornerRadius(10)
                                                    }
                                                    Spacer()
                                                    NavigationLink(destination: MasterListMocktail()){
                                                        Text("MOCKTAILS")
                                                            .frame(width: 150, height: 150)
                                                            .background(Color(red: 116/255, green: 149/255, blue: 154/255))
                                                            .font(.system(size: 25))
                                                            .foregroundColor(Color.white)
                                                            .cornerRadius(10)
                                                    }
                                                    Spacer()
                                                }
                                                VStack {
                                                    Spacer()
                                                    NavigationLink(destination: MasterListLiquor()){
                                                        Text("LIQUOR")
                                                            .frame(width: 150, height: 150)
                                                            .background(Color(red: 116/255, green: 149/255, blue: 154/255))
                                                            .font(.system(size: 25))
                                                            .foregroundColor(Color.white)
                                                            .cornerRadius(10)
                                                            }
                                                    Spacer()
                                                    NavigationLink(destination: MasterListWine()){
                                                        Text("WINE")
                                                            .frame(width: 150, height: 150)
                                                            .background(Color(red: 116/255, green: 149/255, blue: 154/255))
                                                            .font(.system(size: 25))
                                                            .foregroundColor(Color.white)
                                                            .cornerRadius(10)
                                                            }
                                                    Spacer()
                                                }
                                                Spacer()
                                            }
                                            NavigationLink(destination: Roulette()){
                                                Text("ROULETTE")
                                                    .frame(width: 340, height: 75)
                                                    .background(Color(red: 116/255, green: 149/255, blue: 154/255))
                                                    .font(.system(size: 25))
                                                    .foregroundColor(Color.white)
                                                    .cornerRadius(10)
                                            }
                                            Spacer()
                                            NavigationLink(destination: Featured()){
                                                Text("FEATURED")
                                                    .frame(width: 340, height: 75)
                                                    .background(Color(red: 116/255, green: 149/255, blue: 154/255))
                                                    .font(.system(size: 25))
                                                    .foregroundColor(Color.white)
                                                    .cornerRadius(10)
                                                }
                                            Spacer()
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

