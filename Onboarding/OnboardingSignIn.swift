//
//  OnboardingSignIn.swift
//  Handle Demo
//
//  Created by Justin Hong on 6/27/22.
//  Copyright © 2022 Handle. All rights reserved.
//

import SwiftUI

struct OnboardingSignIn: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var email: String = ""
    @State var verificationCode: String = ""
    
    var btnBack : some View { Button(action: {
            self.presentationMode.wrappedValue.dismiss()
            }) {
                HStack {
                    Image(systemName: "arrow.backward")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(Color.black)

                }
            }
        }
    
    var body: some View {
        if #available(iOS 14.0, *) {
            VStack(spacing: 0){
                VStack{
                    HStack{
                        btnBack
                            .padding()
                        Spacer()
                        Image(systemName: "arrow.right")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .padding()
                    }
                    Spacer()
                    Text("Handle")
                        .font(.largeTitle)
                    
                    Spacer()
                    Spacer()
                }
                .frame(height: 250)
                .background(YellowBack)
                VStack{
                    Spacer()
                    TextField("Enter your email", text: $email)
                        .padding(10)
                        .font(.title2)
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(Color(hex: 0xD0EDE8)))
                        .foregroundColor(.black)
                        .padding()
                    TextField("Enter one-time verification code", text: $verificationCode)
                            .padding(10)
                            .font(.title2)
                            .frame(maxWidth: .infinity)
                            .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(Color(hex: 0xD0EDE8)))
                            .foregroundColor(.black)
                            .padding()
                    Spacer()
                    Spacer()
                }
                .frame(maxWidth: .infinity)
            }
            .navigationTitle("Handle")
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct OnboardingSignIn_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingSignIn()
        
    }
}
