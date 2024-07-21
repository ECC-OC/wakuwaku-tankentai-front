//
//  Background.swift
//  wakuwaku-tankentai
//
//  Created by 久乗建汰 on 2024/07/21.
//

import SwiftUI

struct Background: View {
    var body: some View {
        Image("Background")
            .resizable()
            .edgesIgnoringSafeArea(.all)
            .scaledToFill()
    }
}

#Preview {
    Background()
}
