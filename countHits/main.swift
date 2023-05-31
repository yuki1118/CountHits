// countHitsApp.swift
import SwiftUI

@main
struct CountHitsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

// ContentView.swift
import SwiftUI

struct ContentView: View {
    @State private var showSettings = false
    @State private var goalValue = 100
    @State private var countValue = 0
    
    var body: some View {
        NavigationView {
            VStack {
                Text("目標値: \(goalValue)")
                    .font(.largeTitle)
                    .padding()
                
                Button(action: {
                    countValue += 1
                    
                    if countValue >= goalValue {
                        // 目標達成のアクションを起こす
                        // ここではアラートを表示する例を示します
                        showAlert()
                    }
                }) {
                    Text("ボタンを押す")
                        .font(.title)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()
                
                Spacer()
                
                NavigationLink(destination: SettingsView(goalValue: $goalValue)) {
                    Image(systemName: "gear")
                        .font(.title)
                        .padding()
                        .background(Color.gray.opacity(0.5))
                        .foregroundColor(.white)
                        .cornerRadius(20)
                }
                .padding()
            }
            .padding()
        }
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "目標達成", message: "目標に到達しました！", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        UIApplication.shared.windows.first?.rootViewController?.present(alert, animated: true, completion: nil)
    }
}


// SettingsView.swift
import SwiftUI

struct SettingsView: View {
    @Binding var goalValue: Int
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "chevron.left")
                        .font(.title)
                        .padding()
                        .foregroundColor(.blue)
                }
                
                Spacer()
            }
            
            Spacer()
            
            TextField("目標値を入力してください", value: $goalValue, formatter: NumberFormatter(), onCommit: {
                presentationMode.wrappedValue.dismiss()
            })
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .keyboardType(.numberPad)
            .padding()
            
            NavigationLink(destination: ContentView()) {
                Text("設定")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
        }
        .padding()
    }
}
