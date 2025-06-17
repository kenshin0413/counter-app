//
//  ContentView.swift
//  counter1
//
//  Created by miyamotokenshin on R 7/06/17.
//

import SwiftUI

struct ContentView: View {
    
    @State var count: Int = 0
    
    var body: some View {

            VStack {
                Text("\(count)")
                    .font(.largeTitle)
                    .padding()
                
                HStack {
                    Button(
                        action: {
                            count -= 1
                        },label: {
                            Image(systemName: "minus")
                                .frame(width: 150, height: 50)
                                .background(Color(.systemGray4))
                                .cornerRadius(10)
                        }
                    )
                    
                    Button(
                        action: {
                            count += 1
                        },label: {
                            Image(systemName: "plus")
                                .frame(width: 150, height: 50)
                                .background(Color(.systemGray4))
                                .cornerRadius(10)
                        }
                    )
                }
            }
        }
    }

#Preview {
    ContentView()
}
