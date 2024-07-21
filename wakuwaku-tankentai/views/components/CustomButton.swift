//
//  Button.swift
//  wakuwaku-tankentai
//
//  Created by 久乗建汰 on 2024/07/21.
//

import SwiftUI

struct CustomButton: View {
    var text: String
    var color: Color
    var body: some View {
        Text(text)
            .foregroundStyle(.white)
            .font(.system(size: 16))
            .bold()
            .padding(.vertical, 10)
            .frame(width: 112)
            .background(
                color
                .shadow(.inner(radius: 3))
            )
            .cornerRadius(8)
    }
}

#Preview {
    CustomButton(text: "test", color: .green)
}
