//
//  PersonalDrinkProfile.swift
//  Good Sips
//
//  Created by Katelin Vincent on 3/3/22.
//

import SwiftUI

struct PersonalDrinkProfile: View {
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
                    VStack {
                        Spacer().frame(height: 16.0)
                        HStack {
                            Spacer().frame(width: 16.0)
                            VStack(alignment: .leading){
                                //HStack
                                HStack {
                                    Text("Name of Drink") // place holder
                                        .bold()
                                        .font(.system(size: 25))
                                    .offset(x: 0, y: 0)
                                    
                                    // MASON - implement check box here - I can help with placement and look - if this box is checked it should link to RatingSubmission to forcce user to submit rating and automatically add this to MySips List
                                }
                                HStack(alignment: .top, spacing: 20){
                                    Image("Bar photo")
                                        .resizable()
                                        .frame(width: 100, height: 100, alignment: .top)
                                    Text("Ingredients")
                                        .bold()
                                    // for loop displaying ingredients
                                }
                                Spacer()
                                HStack {
                                    Text("My Rating: Drink rating") // place holder
                                    
                                    // MASON - implement drop down menu for user to add drink to bar tab
                                    
                                }
                                Spacer()
                                Text("My Review: Drink rating")
                                // MASON - implement 'leave a review' navigation link above listed reviews to link to "Rating Submission"
                                // for loop to 20 calling array of arrays: reviews identified by name, carries rating and comments
                                
                            // REVIEWS
                            // MASON - store review data
                            }
                            Spacer()
                        }
                        Spacer()
                    }
                }
            }
        }
    }
}

struct PersonalDrinkProfile_Previews: PreviewProvider {
    static var previews: some View {
        PersonalDrinkProfile()
    }
}
