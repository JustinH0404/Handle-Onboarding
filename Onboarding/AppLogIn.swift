//
//  AppLogIn.swift
//  Handle Demo
//
//  Created by Justin Hong on 7/6/22.
//  Copyright © 2022 Handle. All rights reserved.
//

import SwiftUI

struct AppLogIn: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var iconHeight = CGFloat(90)
    @State var whatsAppClicked = false
    @State var messengerClicked = false
    @State var slackClicked = false
    
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
    
    var whatsAppButton: some View {
            Button {
                whatsAppClicked.toggle()
            } label: {
                ZStack{
                if whatsAppClicked == false {
                    Image("WhatsApp")
                        .resizable()
                        .frame(width: iconHeight, height: iconHeight)
                } else {
                    Image("WhatsApp")
                        .resizable()
                        .opacity(0.5)
                    HStack{
                        Spacer()
                        VStack{
                            Image(systemName: "checkmark.circle")
                                .resizable()
                                .frame(width:iconHeight*0.3, height: iconHeight*0.3)
                                .padding(10)
                            Spacer()
                        }
                    }
                }
                EmptyView()
            }
        }
        .frame(width: iconHeight, height: iconHeight)
    }
    var messengerButton: some View {
            Button {
                messengerClicked.toggle()
            } label: {
                ZStack{
                if messengerClicked == false {
                    Image("Messenger")
                        .resizable()
                        .frame(width: iconHeight, height: iconHeight)
                } else {
                    Image("Messenger")
                        .resizable()
                        .opacity(0.5)
                    HStack{
                        Spacer()
                        VStack{
                            Image(systemName: "checkmark.circle")
                                .resizable()
                                .frame(width:iconHeight*0.3, height: iconHeight*0.3)
                                .padding(10)
                            Spacer()
                        }
                    }
                }
                EmptyView()
            }
        }
        .frame(width: iconHeight, height: iconHeight)
    }
    var slackButton: some View {
            Button {
                slackClicked.toggle()
            } label: {
                ZStack{
                if slackClicked == false {
                    Image("Slack")
                        .resizable()
                        .frame(width: iconHeight * 0.8, height: iconHeight * 0.8)
                } else {
                    Image("Slack")
                        .resizable()
                        .opacity(0.5)
                        .frame(width: iconHeight * 0.8, height: iconHeight * 0.8)
                    
                    HStack{
                        Spacer()
                        VStack{
                            Image(systemName: "checkmark.circle")
                                .resizable()
                                .frame(width:iconHeight*0.3, height: iconHeight*0.3)
                                .padding(10)
                            Spacer()
                        }
                    }
                }
                EmptyView()
            }
        }
        .frame(width: iconHeight, height: iconHeight)
    }
    
    var body: some View {
        if #available(iOS 14.0, *) {
            NavigationView{
                VStack(spacing: 0) {
                    VStack {
                        HStack {
                            btnBack
                            Spacer()
                            NavigationLink{
                                PrimaryApp()
                            } label: {
                                Image(systemName: "arrow.right")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(.black)
                            }
                        }
                        .padding()
                        Text("Select the apps you would like to connect")
                            .font(.title)
                            .multilineTextAlignment(.center)
                            .padding([.leading, .trailing, .top])
                        Text("You only have to do this once; the apps will be connected upon each log in")
                            .multilineTextAlignment(.center)
                            .padding([.leading, .trailing, .bottom], 40)
                    }
                    .background(YellowBack)
                    .clipped()
                    .shadow(
                        color: .black,
                        radius: 5,
                        x: 0,
                        y: 5
                    )
                    VStack {
                        HStack {
                            Spacer()
                            whatsAppButton
                            Spacer()
//                            Image("Messenger")
//                                .resizable()
//                                .frame(width: iconHeight, height: iconHeight)
                            messengerButton
                            Spacer()
//                            Image("Slack")
//                                .resizable()
//                                .frame(width: iconHeight*0.9, height: iconHeight*0.9)
                            slackButton
                            Spacer()
                        }
                        .padding(.top, 30)
//                        HStack{
//                            Image("Messenger")
//                                .resizable()
//                                .frame(width: iconHeight, height: iconHeight)
//                                .padding(.leading, 10)
//                            Spacer()
//                        }
//                        .padding()
                        Spacer()
                        OnBoardingDone()
                            .background(Color.white)
                    }
                    .background(Color(hex: 0xD0EDE8))
                }
                .navigationBarHidden(true)
            }
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct AppLogIn_Previews: PreviewProvider {
    static var previews: some View {
        AppLogIn()
    }
}
