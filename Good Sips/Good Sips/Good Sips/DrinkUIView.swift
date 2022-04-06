//
//  DrinkUIView.swift
//  Good Sips
//
//  Created by Katelin Vincent on 4/2/22.
//

import SwiftUI

struct DrinkUIView: View {
    @StateObject private var drinkListVM = DrinkListViewModel()
    @State private var searchText: String = ""
    
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
               // ScrollView{
                VStack {
                    
                    //Spacer()
                    
                        List(drinkListVM.drinks, id: \.strDrink) {drink in
                            Text(drink.strDrink)
                        }.listStyle(.plain)
                            .searchable(text: $searchText)
                            .onChange(of: searchText){ value in
                                async {
                                    if !value.isEmpty && value.count > 1 {
                                        await drinkListVM.search(name: value)
                                    } else {
                                        drinkListVM.drinks.removeAll()
                                    }
                                }
                            }

                        
                    }
                    .navigationBarTitleDisplayMode(.inline)
               // }
            }
        }
    }
}

struct DrinkUIView_Previews: PreviewProvider {
    static var previews: some View {
        DrinkUIView()
    }
}
