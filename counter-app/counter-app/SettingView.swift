//
//  SettingView.swift
//  counter-app
//
//  Created by miyamotokenshin on R 7/06/18.
//

import SwiftUI

struct SettingView: View {
    
    @State var maxCount = ""
    
    var body: some View {
        HStack {
            Text("カウンターの上限値:")
            TextField("上限値を入力してください", text: $maxCount)
                .frame(width: 180)
        }
    }
}

#Preview {
    SettingView()
}
