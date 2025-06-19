//
//  ContentView.swift
//  counter-app
//
//  Created by miyamotokenshin on R 7/06/17.
//

import SwiftUI

struct ContentView: View {
    @State var count: Int = 0
    @State var maxCount: Int = 0
    @State var isShowingModal = false
    var body: some View {
        VStack(spacing: 20) {
            Text("\(count)")
                .font(.largeTitle)
                .padding()
            
            HStack {
                Button(action: {
                    count -= 1
                }, label: {
                    Image(systemName: "minus")
                        .frame(width: 150, height: 50)
                        .background(Color(.systemGray4))
                        .cornerRadius(10)
                })
                
                Button(action: {
                    if count < maxCount {
                        count += 1
                    }
                }, label: {
                    Image(systemName: "plus")
                        .frame(width: 150, height: 50)
                        .background(Color(.systemGray4))
                        .cornerRadius(10)
                })
            }
            
            Button(action: {
                count = 0
            }, label: {
                Text("リセット")
                    .foregroundStyle(Color.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
            })
            
            Button(action: {
                isShowingModal = true
            }, label: {
                Text("設定")
                    .foregroundStyle(Color.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
            })
        }
        .sheet(isPresented: $isShowingModal) {
            SettingView(maxCount: $maxCount)
        }
    }
}

#Preview {
    ContentView()
}
