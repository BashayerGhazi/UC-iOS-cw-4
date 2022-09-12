//
//  ContentView.swift
//  myGrocery
//
//  Created by Shahad on 12/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var menus = ["pizza","pancakes","FrenchFries","mojito","orangejuice"]
    @State var add = ""
    var body: some View {
        VStack{
            NavigationView {
                List( menus, id: \.self){ menu in
                    HStack{
                        //NavigationLink(menu, destination: ContentView)
                        Image(menu).resizable().frame(width: 30, height: 40)
                        Text(menu)
                        
                        
                    }
                    .contentShape(Rectangle())
                    .navigationTitle("Menu")
                }
            }
            HStack{
                Button(action:{
                    menus.append(add)
                    
                }) {
                    Image(systemName: "plus").background(.red).frame(width: 30, height: 30)
                    
                }.background(.red).frame(width: 60, height: 60)
                
                
                TextField("new item", text: $add)
                
                Button(action:{
                    menus.remove(at: 0)
                    
                    
                }) {
                    Image(systemName: "minus").background(.green).frame(width: 30, height: 30)
                    
                }.background(.green).frame(width: 60, height: 60)
                
                
                
                
                

                Button(action:{
                    menus.append(menus.randomElement() ?? "")
                    
                }) {
                    Image(systemName: "questionmark").background(.orange).frame(width: 30, height: 30)
                    
                }.background(.orange).frame(width: 30, height: 30).padding()
            
                
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



