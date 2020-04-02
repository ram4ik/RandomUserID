//
//  ContentView.swift
//  RandomUserID
//
//  Created by ramil on 02.04.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var randomFunc = myFUnctionsApp()
    @State private var userID = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    HStack {
                        Text("MyAppUserID: ")
                        Spacer()
                        Text(self.userID.uppercased())
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                    }
                }
                Button(action: {
                    self.userID = self.randomFunc.randomGenerateID(16)
                }) {
                    Text("Random ID")
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
