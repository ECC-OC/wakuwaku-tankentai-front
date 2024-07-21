//
//  SignUpView.swift
//  wakuwaku-tankentai
//
//  Created by 久乗建汰 on 2024/07/21.
//

import SwiftUI

struct SignUpView: View {
    @State var name: String = ""
    @State var email: String = ""
    @State var password: String = ""
    var body: some View {
        ZStack {
            Background()
            Card{
                Text("新規アカウント登録")
                    .font(.headline)
                    .fontWeight(.bold)
                VStack {
                    inputArea
                    Spacer()
                    CustomButton(text: "登録", color: Color("Color-Accent"))
                }
            }
        }
    }
    
    var inputArea: some View {
        VStack(spacing: 16) {
            TextField("ニックネーム", text: $name)
                .textFieldStyle(.roundedBorder)
            TextField("メールアドレス", text: $email)
                .textFieldStyle(.roundedBorder)
            SecureField("パスワード", text: $password)
                .textFieldStyle(.roundedBorder)
        }
    }
}

#Preview {
    SignUpView()
}
