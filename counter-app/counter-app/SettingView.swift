//
//  SettingView.swift
//  counter-app
//
//  Created by miyamotokenshin on R 7/06/18.
//

import SwiftUI

struct SettingView: View {
    
    @State var number = ""
    @Binding var maxCount: Int
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Text("カウンターの上限値:")
                TextField("上限値を入力してください", text: $number)
                    .keyboardType(.numberPad)
                    .frame(width: 180)
            }
            Button("保存") {
                if let value = Int(number) {
                    maxCount = value
                    dismiss()
                }
            }
            .frame(width: 100, height: 30)
            .background(Color.blue)
            .foregroundStyle(Color.white)
            .cornerRadius(10)
        }
    }
}

#Preview {
    SettingView(maxCount: .constant(1))
}
