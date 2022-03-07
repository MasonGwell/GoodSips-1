//
//  BarTabs.swift
//  Good Sips
//
//  Created by Katelin Vincent on 2/28/22.
//

import SwiftUI

struct BarTabs: View {
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
                            
                ScrollView{
                    
                    // MASON - bar tabs ordered alphabetically after favorites
                    // MASON - store bar tabs
                    
                    //Potential Method for implementing result list
                    /* ForEach((0..<Array.AlcCategory){
                     // NAVIGATE TO personal DRINK PROFILE
                     
                     Text("\Array.Bar Tabs")
                     Spacer()
                     .padding()

                     Divider()
                     .background(Color(.systemGray4))
                     .padding(.leading)
                     }
                     */
                    
                    NavigationLink(destination: FavoritesList()){
                            Text("FAVORITES")
                            Spacer()
                            }.padding()
                    
                    
                            Divider()
                            .background(Color(.systemGray4))
                            .padding(.leading)
                    
                    NavigationLink(destination: BarTabList()){
                            Text("TESTER")
                            Spacer()
                            }.padding()
                    
                    
                            Divider()
                            .background(Color(.systemGray4))
                            .padding(.leading)

                }
                

                
                // MASON - at bottom of list put button labeled "Add a Bar Tab..." that has a pop up that asks for list name and then adds name to bar tab list
                
        }
        .navigationBarTitleDisplayMode(.inline)

}
}
}


struct BarTabs_Previews: PreviewProvider {
    static var previews: some View {
        BarTabs()
    }
}
