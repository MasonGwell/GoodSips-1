//
//  MySips.swift
//  Good Sips
//
//  Created by Katelin Vincent on 2/28/22.
//

import SwiftUI

struct MySips: View {
    
    @State var searchText = ""
    
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
                        ScrollView {
                            
                            // List of ONLY drinks the user has tried - clicking name of drink should NaviggationLink to PersonalDrinkProfile
                            //                        // MASON - make search function
                            //                        // JORDAN - make data show up
                            //                        // each drink needs to be a NavigationLink that links to DrinkProfile
                            //
                            
                        }
                    }
                    .navigationBarTitleDisplayMode(.inline)

    }
        }
    }
}

struct MySips_Previews: PreviewProvider {
    static var previews: some View {
        MySips()
    }
}
