//
//  GalleryView.swift
//  FBook
//
//  Created by Linna Lux on 2022-11-21.
//

import SwiftUI
import Firebase

struct GalleryView: View {
    var body: some View {
        ZStack {
            HStack {
                Image("image2")
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                Text("Hello World").foregroundColor(.white).font(.system(size: 20)).bold()
            }
            
            Button(action: {
                
                try! Auth.auth().signOut()
                UserDefaults.standard.set(false, forKey: "status")
                NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
                
            }) {
                
                Text("Log out")
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 50)
            }
            .background(Color("Color"))
            .cornerRadius(25)
            .padding(.top, 100)
            
        }
               
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
