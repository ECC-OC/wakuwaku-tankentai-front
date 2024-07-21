//
//  SignFromCard.swift
//  wakuwaku-tankentai
//
//  Created by 久乗建汰 on 2024/07/21.
//

import SwiftUI

struct Card<T: View>: View {
    @ViewBuilder var content: () -> T
    var body: some View {
        VStack(spacing: 32) {
            content()
        }
        .frame(width: 250, height: 350)
        .padding(32)
        .background(.white)
        .cornerRadius(16)
    }
}

#Preview {
    Card {
        Text("aaa")
    }
}
