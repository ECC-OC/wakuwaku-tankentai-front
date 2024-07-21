//
//  SignInView.swift
//  wakuwaku-tankentai
//
//  Created by 久乗建汰 on 2024/07/21.
//

import SwiftUI

struct SignInView: View {
    @State var email: String = ""
    @State var password: String = ""
    var body: some View {
        ZStack {
            Background()
            Card{
                Text("おかえりなさい！")
                    .font(.headline)
                    .fontWeight(.bold)
                VStack {
                    inputArea
                    Spacer()
                     CustomButton(text: "ログイン", color: Color("Color-Accent"))
                }
            }
        }
    }
    
    var inputArea: some View {
        VStack(spacing: 16) {
            TextField("メールアドレス", text: $email)
                .textFieldStyle(.roundedBorder)
            SecureField("パスワード", text: $password)
                .textFieldStyle(.roundedBorder)
        }
    }
}

#Preview {
    SignInView()
}
