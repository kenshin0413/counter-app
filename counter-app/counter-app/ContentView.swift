//
//  ContentView.swift
//  counter-app
//
//  Created by miyamotokenshin on R 7/06/17.
//

import SwiftUI

struct ContentView: View {
    
    @State var count: Int = 0
    @State private var maxCount: Int = 0
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("\(count)")
                    .font(.largeTitle)
                    .padding()
                
                HStack {
                    Button(
                        action: {
                            if count > maxCount {
                                count -= 1
                            }
                        },label: {
                            Image(systemName: "minus")
                                .frame(width: 150, height: 50)
                                .background(Color(.systemGray4))
                                .cornerRadius(10)
                        }
                    )
                    
                    Button(
                        action: {
                            if count < maxCount {
                                        count += 1
                                    }
                        },label: {
                            Image(systemName: "plus")
                                .frame(width: 150, height: 50)
                                .background(Color(.systemGray4))
                                .cornerRadius(10)
                        }
                    )
                }
                
                Button(
                    action: {
                        count = 0
                    },label: {
                        Text("リセット")
                            .foregroundStyle(Color.white)
                            .frame(width: 300, height: 50)
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                )
                
                NavigationLink {
                    SettingView(maxCount: $maxCount)
                } label: {
                    Text("設定")
                        .foregroundStyle(Color.white)
                        .frame(width: 300, height: 50)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
