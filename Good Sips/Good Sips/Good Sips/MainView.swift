//
//  MainView.swift
//  Good Sips
//  Opening Screen - beginning navigation list 
//  Created by Katelin Vincent on 3/4/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
                ContentView()
                    .tabItem{
                        Image(systemName: "magnifyingglass")//("search bar icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                        Text("Search")
                    }
            MySips()
                .tabItem{
                    //Label("My Sips", systemImage: "list.dash")
                    Image(systemName: "line.horizontal.star.fill.line.horizontal")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                    Text("My Sips")
                }
                BarTabs()
                    .tabItem{
                        //Label("Bar Tabs", systemImage: "list.dash")
                        Image(systemName: "checkmark")//("bar tabs icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                        Text("Bar tabs")
                    }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
