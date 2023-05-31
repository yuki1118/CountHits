//
//  SettingView.swift
//  countHits
//
//  Created by 吉田侑己 on 2023/05/30.
//

import SwiftUI

struct Setting: View {
    var body: some View {
        ZStack {
            Color(.red)
            Text("遷移先だよ")

            // おしゃれなボタン(サンプル)
            Button(action: {
                // ボタンがタップされた時の処理
            }) {
                Text("Tap Me")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .background(LinearGradient(gradient: Gradient(colors: [Color.pink, Color.purple]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(10)
                    .shadow(color: .gray, radius: 4, x: 0, y: 2)
            }
            .padding()
            
            Button(action: {
                // ボタンがタップされた時の処理
            }) {
                Text("Submit")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.white, lineWidth: 2)
                    )
            }
            .padding()
        }
    }
}

struct setting_Previews: PreviewProvider {
    static var previews: some View {
        setting()
    }
}
