//
//  MasterList.swift
//  Good Sips
//
//  Created by Katelin Vincent on 2/28/22.
//

import SwiftUI

// router function

// Create array of list sizes
// Create array or arrays to carry drink name, ingredients and photos
    // maybe map and key to acess ingredients and photo

struct MasterList: View {
    
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
                            
                            // SEARCH RESULTS HERE
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



struct MasterList_Previews: PreviewProvider {
    static var previews: some View {
        MasterList()
    }
}
    // SEARCH RESULTS HERE
    // MASON - make search function
    // JORDAN - make data show up
    // each drink needs to be a button that links to DrinkProfile
   /* ForEach((0..<Array.AlcCategory){
    HStack{
    // NAVIGATE TO DRINK PROFILE
    
        Text("\Array.AlcCategory.Name")
        Spacer()
    .padding()
    
    Divider()
    .background(Color(.systemGray4))
    .padding(.leading)
    }
    */
    
