//
//  ContentView.swift
//  SwiftUIReView
//
//  Created by UrataHiroki on 2021/10/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
//        NavigationView{
//            List{
//                HStack{
//                    Text("SwiftUILesson01")
//                        .font(.title)
//                    Text(".font(.title)を使用")
//                }
//
//                HStack {
//                    Text("SwiftUILesson02")
//                        .font(.system(size: 30))
//                        .fontWeight(.bold)
//                    Text(".font(.system(size: 30)).fontWeight(.bold)を使用")
//                }.padding(.vertical, 40)
//
//                HStack {
//                    Text("SwiftUILesson03")
//                        .font(.title2)
//                        .foregroundColor(.green)
//                    Text(".font(.title2).foregroundColor(.green)を使用")
//                }.padding(.vertical, 20)
//
//                VStack {
//                    Text("SwiftUILesson04").frame(width: 375, height: 100).border(Color.orange, width: 10)
//                    Text(".frame(width:375,height:100).border(Color.orange, width: 10)を使用").frame(width:375)
//                }.padding(.vertical, 30)
//
//                HStack {
//                    Text("SwiftUILesson05").font(.headline).foregroundColor(.orange)
//
//                    Text(".font(.headline).foregroundColor(.orange)を使用")
//                }.padding(.vertical, 30)
//
//                VStack {
//                    Text("SwiftUILesson06").font(.largeTitle).bold().foregroundColor(.red)
//                    Text(".font(.largeTitle).bold().foregroundColor(.red)を使用").padding(.top, 20)
//                }.padding(.vertical, 30)
//
//            }.navigationTitle("Text復習")
//        }
        
        NavigationView{
            
            List{
                
                ReViewImage()
                ReViewImage02().padding(30)
            }.navigationTitle("Image復習")
        }
    }
}

struct ReViewImage:View {
    var body: some View{
        
        HStack{
        
        Image("image01")
            .resizable()
            .frame(width: 100, height: 200)
            .aspectRatio(contentMode: .fit) //.fillもある
            
            Text(".resizable().frame(width: 100, height: 200).aspectRatio(contentMode: .fit)を使用")
        }
    }
}

struct ReViewImage02:View {
    var body:some View{
        
        VStack{
            
            Image("image02")
                .resizable()
                .frame(width: 200, height: 100)
                .aspectRatio(contentMode: .fill)
                //.scaleEffect(1.5)
                .offset(x: 40.0, y: -30)
                .border(Color.green, width: 5.0)
                .padding([.bottom,.leading], 30)
            
            Text(".resizable().frame(width: 350, height: 100).scaleEffect(1.5)")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
