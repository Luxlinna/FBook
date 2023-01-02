//
//  Signout.swift
//  FBook
//
//  Created by Linna Lux on 2023-01-02.
//

import SwiftUI
import Firebase

struct Logout: View {
    var body: some View {
        ZStack {
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
