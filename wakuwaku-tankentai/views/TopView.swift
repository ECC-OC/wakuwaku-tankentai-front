//
//  ContentView.swift
//  wakuwaku-tankentai
//
//  Created by 久乗建汰 on 2024/07/21.
//

import SwiftUI

struct TopView: View {
    @State var isSigninView: Bool;
    init() {
        self.isSigninView = false
    }
    var body: some View {
        NavigationStack {
            ZStack {
                Background()
                
                VStack {
                    Spacer()
                    Image("TitleLogo")
                        .resizable()
                        .aspectRatio(5/3, contentMode: .fit)
                    Spacer()
                    VStack(spacing: 32) {
                        buttonList
                        iconList
                    }
                    .padding(.vertical, 16)
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 96)
            }
        }
    }
    
    var buttonList: some View {
        VStack(spacing: 16) {
            NavigationLink {
                SignInView()
            } label: {
                CustomButton(text: "新規登録", color: Color("Color-Sub-1"))
            }
            NavigationLink {
                SignUpView()
            } label: {
                CustomButton(text: "ログイン", color: Color("Color-Accent"))
            }
        }
    }
    
    var iconList: some View {
        HStack(spacing: 32) {
            CustomIcon(image: Image("Icon-Apple"))
            CustomIcon(image: Image("Icon-Google"))
            CustomIcon(image: Image("Icon-X"))
        }
    }
}


#Preview {
    TopView()
}
