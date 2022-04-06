//
//  BarTabList.swift
//  Good Sips
//
//  Created by Katelin Vincent on 3/4/22.
//

import SwiftUI
import Combine


struct BarTabList: View {
    // AppView for task handler
      @ObservedObject var taskStore = TaskStore()
      @State var newToDo : String = ""

      var searchBar : some View{
        HStack {
          TextField("Enter in a drink for your Bar Tab", text:         self.$newToDo)
          Button(action: self.addNewToDo, label:{
              Text("Add New")
          })
        }
      }

      func addNewToDo(){
        taskStore.tasks.append(Task(id: String(taskStore.tasks.count + 1), toDoItem: newToDo))
        self.newToDo = ""
        // add auto generated id in the future
      }


      var body: some View {
        NavigationView{
          VStack{
              searchBar.padding()
            List{
              ForEach(self.taskStore.tasks){
                task in
                Text(task.toDoItem)
              }.onMove(perform: self.move)
              .onDelete(perform: self.delete) // Add checkbox function - move drink to bottoms, insert pop up to ask for rating
            }.navigationBarTitle("Tasks")
            }.navigationBarItems(trailing: EditButton())
          }
        }
    func move(from source : IndexSet, to destination: Int){
      taskStore.tasks.move(fromOffsets: source, toOffset: destination)
    }
    func delete(at offsets : IndexSet){
      taskStore.tasks.remove(atOffsets : offsets)
    }
    }

//    @State var searchText = ""
//
//    var body: some View {
//        NavigationView {
//            ZStack {
//                VStack {
//                    Spacer().frame(height: 44.0)
//                    HStack {
//                        Spacer()
//                        Image("Good Sips Icons - words") // good sips icon at top
//                            .resizable()
//                            .aspectRatio(contentMode: .fill)
//                            .frame(width: 100, height: 40, alignment: .center)
//                        Spacer()
//                    }
//                    .background(Color(red: 116/255, green: 149/255, blue: 154/255))
//                    Spacer()
//                }
//                .edgesIgnoringSafeArea(.top)
//                .background()
//                VStack {
//
//                    Spacer()
//                    HStack{ // Search Bar - MASON: make search function
//                        Image("search bar icon")
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width: 25, height: 25)
//                        TextField("Search for Drinks or Ingredients", text: $searchText)
//                            .padding(8.0)
//                    }
//                    .background()
//                    Spacer()
//                        ScrollView {
//
//// MASON/JORDAN - display contents of list
//
//                        }
//                    }
//                    .navigationBarTitleDisplayMode(.inline)
//
//    }
//        }
//    }


struct BarTabList_Previews: PreviewProvider {
    static var previews: some View {
        BarTabList()
    }
}
