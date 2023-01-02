//
//  Homescreen.swift
//  FBook
//
//  Created by Linna Lux on 2022-11-21.
//
import SwiftUI
import Foundation
import Firebase

struct Homescreen : View {
    
    var body: some View{
        
        VStack{
            TabView{
                ContentView().tabItem {
                    Image(systemName: "house").font(.title)
                }
                Logout().tabItem {
                    Image(systemName: "rectangle.portrait.and.arrow.right")
                }
            }.accentColor(.black)
                .edgesIgnoringSafeArea(.top)
        }
    }
}
