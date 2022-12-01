//
//  Home.swift
//  FBook
//
//  Created by Linna Lux on 2022-11-21.
//

import SwiftUI
import Foundation


struct Home : View {
    
    @State var show = false
    @State var status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
    
    var body: some View{
        ZStack{
            Color.purple.ignoresSafeArea()
            NavigationView{
                VStack {
                    if self.status{
                        Homescreen()
                    } else {
                        
                        ZStack{
                            NavigationLink(destination: SignUp(show: self.$show), isActive: self.$show){
                                Text("")
                            }
                            
                            .hidden()
                            
                            Login(show: self.$show)
                        }
                    }
                }
                
                .navigationBarTitle("")
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
                .onAppear{
                    
                    NotificationCenter.default.addObserver(forName: NSNotification.Name("status"), object: nil, queue: .main) { (_) in
                     
                        self.status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
                    }
                }
            }

        }
       
    }
}
