//
//  ContentView.swift
//  countHits
//
//  Created by 吉田侑己 on 2022/11/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //画面遷移
        NavigationView {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")	
                    .font(.largeTitle)
                    .foregroundColor(Color.red)
                NavigationLink(destination: setting().navigationTitle("画面2")) {
                            Text("SecondViewへ")
                        }
                
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
