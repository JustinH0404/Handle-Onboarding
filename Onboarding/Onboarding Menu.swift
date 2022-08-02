//
//  Onboarding Menu.swift
//  Handle Demo
//
//  Created by Justin Hong on 6/27/22.
//  Copyright © 2022 Handle. All rights reserved.
//

import SwiftUI

let YellowBack : Color = Color(red: 245/255, green: 242/255, blue: 208/255)

struct Onboarding_Menu: View {
    var body: some View {
        NavigationView{
            if #available(iOS 14.0, *) {
                VStack (spacing: 0){
                    HStack{
                        Spacer()
                        Text("HANDLE")
                            .font(.largeTitle)
                        Spacer()
                    }
                    .frame(height: 230)
                    .background(YellowBack)
                    ZStack{
                        Rectangle()
                            .frame(height: 150)
                            .foregroundColor(Color.white)
                            .shadow(color: .gray, radius: 3, y: 3)
                        HStack{
                            Spacer()
                            Text("Never miss an important message again")
                                .font(.title)
                                .multilineTextAlignment(.center)
                            Spacer()
                        }
                    }
                    VStack{
                        Spacer()
                        NavigationLink{
                            OnboardingSignUp()
                        } label:  {
                            Text("Create an account")
                                .padding()
                                .font(.title2)
                                .frame(maxWidth: .infinity)
                                .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(Color(hex: 0x4E6F6B)).shadow(radius: 3))
                                .foregroundColor(.white)
                                .padding()

                        }
                        .padding(.leading)
                        .padding(.trailing)
                        NavigationLink{
                            OnboardingSignIn()
                        } label:  {
                            Text("Already have an account?")
                                .padding()
                                .font(.title2)
                                .frame(maxWidth: .infinity)
                                .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(Color(hex: 0x4E6F6B, alpha: 0.6)).shadow(radius: 3))
                                .foregroundColor(.white)
                                .padding()

                        }
                        .padding(.bottom)
                        .padding(.leading)
                        .padding(.trailing)
                        Spacer()
                    }
                    .frame(maxWidth: .infinity)
                    .background(Color(hex: 0xD0EDE8))
                }
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct Onboarding_Menu_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding_Menu()
    }
}


extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}
