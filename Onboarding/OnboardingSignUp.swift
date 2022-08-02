//
//  OnboardingSignUp.swift
//  Handle Demo
//
//  Created by Justin Hong on 6/28/22.
//  Copyright © 2022 Handle. All rights reserved.
//

import SwiftUI
import AuthenticationServices
import GoogleSignIn
import GoogleSignInSwift



struct OnboardingSignUp: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var email: String = ""
    @State var verificationCode: String = ""
    @State var name: String = ""
    
    
    var profile: some View {
        ZStack{
            Circle()
                .fill(.gray)
            Text("Choose image")
                .multilineTextAlignment(.center)
        }
        .frame(width: 100, height: 100)
    }
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

    var rightArrow: some View {
        Image(systemName: "arrow.right")
            .resizable()
            .frame(width: 25, height: 25)
            .padding()
            .foregroundColor(.black)
    }
    
    var everythingElse: some View {
        VStack{
            TextField("Enter your email", text: $email)
                .padding(10)
                .font(.headline)
                .frame(maxWidth: .infinity)
                .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(Color(hex: 0xD0EDE8)))
                .foregroundColor(.black)
                .padding(.top, 30)
                .padding()
                .multilineTextAlignment(.center)
            NavigationLink{
                AppLogIn()
            } label: {
                Text("Enter one-time verification code")
                        .padding(10)
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(Color(hex: 0xD0EDE8)))
                        .foregroundColor(.black)
                        .padding([.leading, .trailing, .top])
                        .multilineTextAlignment(.center)
            }

            Text("Didn't recieve email? Resend verification code")
                .font(.subheadline)
            Spacer()
            if #available(iOS 14.0, *) {
                SignInWithAppleButton(
                    .signUp,
                    onRequest: { request in
                        // 1
                        request.requestedScopes = [.fullName, .email]
                    },
                    onCompletion: { result in
                        switch result {
                        case .success (let authResults):
                            // 2
                            print("Authorization successful.")
                        case .failure (let error):
                            // 3
                            print("Authorization failed: " + error.localizedDescription)
                        }
                    }
                )
                .frame(maxWidth: .infinity, maxHeight: 40)
                .padding()
            } else {
                // Fallback on earlier versions
            }
            GoogleSignInButton(action: handleSignInButton)
                .padding([.leading, .trailing])

//            HStack{
//                if #available(iOS 14.0, *) {
//                    (Text(Image(systemName: "g.circle")) + Text(" Sign up with Google"))
//                        .padding(10)
//                        .frame(maxWidth: .infinity)
//                        .background(RoundedRectangle(cornerRadius: 5, style: .continuous).fill(Color(hex: 0xD0EDE8)))
//                } else {
//                    // Fallback on earlier versions
//                }
//            }
//            .padding([.leading, .trailing])
            Spacer()
        }
    }
    
    var body: some View {
        if #available(iOS 14.0, *) {
            NavigationView{
            VStack(spacing: 0){
                VStack{
                    HStack{
                        btnBack
                            .padding()
                        Spacer()
                        NavigationLink {
                            AppLogIn()
                        } label: {
                            rightArrow
                        }
                    }
                    profile
                    TextField("Enter full name", text: $name)
                        .multilineTextAlignment(.center)
                        .frame(width: 300, alignment: .center)
                        .padding(.top)
                    Spacer()
                    Spacer()
                }
                .frame(height: 250)
                .background(YellowBack)
                everythingElse
                    .frame(maxWidth: .infinity)
                    .navigationBarHidden(true)
                    .navigationBarBackButtonHidden(true)
                }
            .background(.white)
            }
            .navigationTitle("Handle")
            .navigationBarBackButtonHidden(true)
        }

    }
    
    func handleSignInButton() {
//      GIDSignIn.sharedInstance.signIn(
//        with: signInConfig,
//        presenting: presentingViewController) { user, error in
//          guard let signInUser = user else {
//            // Inspect error
//            return
//          }
//          // If sign in succeeded, display the app's main content View.
//        }
//      )
    }
}

struct OnboardingSignUp_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingSignUp()
    }
}
