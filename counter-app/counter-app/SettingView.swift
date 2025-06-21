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
                Stepper(value: $maxCount, step: 1) {
                    Text("\(maxCount)")
                }
                .frame(width: 200)
            }
            
            HStack {
                Text("カウンターの下限値:")
                Stepper(value: $minCount, step: 1) {
                    Text("\(minCount)")
                }
                .frame(width: 200)
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
    SettingView(minCount: .constant(0), maxCount: .constant(0))
}
