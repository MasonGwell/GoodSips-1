//
//  RatingSubmission.swift
//  Good Sips
//
//  Created by Katelin Vincent on 3/4/22.
//

import SwiftUI

struct RatingSubmission: View {
    var body: some View {
            ZStack(alignment: .top){
                VStack {
                    Color(red: 116/255, green: 149/255, blue: 154/255)// top BK color
                    .edgesIgnoringSafeArea(.top)
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

                        ScrollView{
                            // MASON - implement text fields that can store data. User should input user rating, and optional photo/comments
                            // the data we get from this should be saved in a location that we have review it
                        }
                }
            }
    }
}

struct RatingSubmission_Previews: PreviewProvider {
    static var previews: some View {
        RatingSubmission()
    }
}
