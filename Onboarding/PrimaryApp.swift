//
//  PrimaryApp.swift
//  Handle Demo
//
//  Created by Justin Hong on 7/6/22.
//  Copyright © 2022 Handle. All rights reserved.
//

import SwiftUI


struct PrimaryApp: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var selected: String = ""
    var iconHeight = CGFloat(100)

    
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
    var btnForward: some View {
        Image(systemName: "arrow.right")
            .resizable()
            .frame(width: 25, height: 25)
            .foregroundColor(.black)
    }
    
    var whatsAppButton: some View {
            Button {
                selected = "whatsapp"
            } label: {
                ZStack{
                if selected != "whatsapp" {
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
                selected = "messenger"
                var x = print("hello")
            } label: {
                ZStack{
                if selected != "messenger" {
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
                selected = "Slack"
            } label: {
                ZStack{
                if selected != "Slack" {
                    Image("Slack")
                        .resizable()
                        .frame(width: iconHeight*0.9, height: iconHeight*0.9)
                } else {
                    Image("Slack")
                        .resizable()
                        .opacity(0.5)
                    HStack{
                        Spacer()
                        VStack{
                            Image(systemName: "checkmark.circle")
                                .resizable()
                                .frame(width:iconHeight*0.3, height: iconHeight*0.3)
                                .padding(5)
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
                VStack (spacing: 0){
                    HStack {
                        btnBack
                        Spacer()
                        NavigationLink{
                            ContentView()
                        } label: {
                            btnForward
                        }
                    }
                    .padding()
                    Text("Choose your primary app")
                        .font(.title)
                        .padding(40)
                        .multilineTextAlignment(.center)
                    HStack {
                        Spacer()
                        whatsAppButton
                        Spacer()
                        messengerButton
                        Spacer()
                        slackButton
                        Spacer()
                    }
                    Spacer()
                    OnBoardingDone()
                        .background(Color.white)
                }
                .navigationBarHidden(true)
                .background(YellowBack)
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        }
    }
}

struct PrimaryApp_Previews: PreviewProvider {

    static var previews: some View {
        PrimaryApp()
    }
}
