 //
//  ContentView.swift
//  SwiftDemo
//
//  Created by Dipika on 14/9/20.
//  Copyright © 2020 Dipika. All rights reserved.
//

import SwiftUI
 struct data:Identifiable {
    var id = UUID()
    let title: String
    let imagename: String
    let imagedescription: String
    
    
 }
struct ContentView: View {
    var items = [data]()
    var body: some View {
        
        NavigationView{
            List(items) { data in
                
                NavigationLink(destination: Descriptionview(lesson: data)) {
                    HStack{
                        Image(data.imagename)
                                                                   .resizable().frame(width: 100, height: 100, alignment: .center)
                            .cornerRadius(10)
                                                    
                        Text(data.title)
                            .font(.title)
                            .foregroundColor(.primary)
                            .fontWeight(.bold)
                                                               
                    }
                }
                   }
        .navigationBarTitle("Fruit Hub")
        }
    }
}
 struct Descriptionview: View {
    var lesson: data
     var body: some View {
         
        VStack{
            
            Image(lesson.imagename)
                .resizable().frame(width: 300, height: 300, alignment: .center)
                .aspectRatio(contentMode: .fit)
      
            Text(lesson.imagedescription)
                .font(.largeTitle)
            .padding(5)
            
        }
        .navigationBarTitle(lesson.title)
     }
 }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(items: [
            data(title: "Orange", imagename: "orange", imagedescription: "Oranges are round orange-coloured fruit that grow on a tree which can reach 10 metres (33 ft) high. Orange trees have dark green shiny leaves and small white flowers with five petals."),
              data(title: "mango", imagename: "mango", imagedescription: "Oranges are round orange-coloured fruit that grow on a tree which can reach 10 metres (33 ft) high. Orange trees have dark green shiny leaves and small white flowers with five petals."),
                data(title: "Banana", imagename: "banana", imagedescription: "Oranges are round orange-coloured fruit that grow on a tree which can reach 10 metres (33 ft) high. Orange trees have dark green shiny leaves and small white flowers with five petals."),
                  data(title: "PineApple", imagename: "pineapple", imagedescription: "Oranges are round orange-coloured fruit that grow on a tree which can reach 10 metres (33 ft) high. Orange trees have dark green shiny leaves and small white flowers with five petals."),
                    data(title: "Kiwi", imagename: "kiwi", imagedescription: "Oranges are round orange-coloured fruit that grow on a tree which can reach 10 metres (33 ft) high. Orange trees have dark green shiny leaves and small white flowers with five petals."),
                      data(title: "Strawberry", imagename: "strawberry", imagedescription: "Oranges are round orange-coloured fruit that grow on a tree which can reach 10 metres (33 ft) high. Orange trees have dark green shiny leaves and small white flowers with five petals."),
                        data(title: "Guava", imagename: "guava", imagedescription: "Oranges are round orange-coloured fruit that grow on a tree which can reach 10 metres (33 ft) high. Orange trees have dark green shiny leaves and small white flowers with five petals.")
            
        ])
        .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
    }
}
