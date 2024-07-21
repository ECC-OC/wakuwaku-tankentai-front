//
//  CustomIcon.swift
//  wakuwaku-tankentai
//
//  Created by 久乗建汰 on 2024/07/21.
//

import SwiftUI

struct CustomIcon: View {
    var image: Image
    var body: some View {
        Circle()
            .fill(.white)
            .aspectRatio(1, contentMode: .fit)
            .frame(width: 48)
            .overlay(
                image
                    .resizable()
                    .padding(4)
            )
    }
}

#Preview {
    CustomIcon(image: Image("Icon-Google"))
}
