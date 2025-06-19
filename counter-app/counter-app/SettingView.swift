//
//  SettingView.swift
//  counter-app
//
//  Created by miyamotokenshin on R 7/06/18.
//

import SwiftUI

struct SettingView: View {
    @Binding var minCount: Int
    @Binding var maxCount: Int
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Text("カウンターの上限値:")
                TextField("上限値を入力してください", value: $maxCount, format: .number)
                    .keyboardType(.numberPad)
                    .frame(width: 180)
            }
            
            HStack {
                Text("カウンターの下限値:")
                TextField("下限値を入力してください", value: $minCount, format: .number)
                    .keyboardType(.numberPad)
                    .frame(width: 180)
            }
            
            Button("閉じる") {
                dismiss()
            }
            .frame(width: 100, height: 30)
            .background(Color.blue)
            .foregroundStyle(Color.white)
            .cornerRadius(10)
        }
    }
}

#Preview {
    SettingView(minCount: .constant(1), maxCount: .constant(1))
}
