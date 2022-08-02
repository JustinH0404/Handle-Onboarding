//
//  Finished.swift
//  Onboarding (iOS)
//
//  Created by Justin Hong on 8/2/22.
//

import SwiftUI

struct Finished: View {
    var body: some View {
        VStack{
            HStack{
                Spacer()
            }
            Spacer()
            Text("Congratulations, you have finished creating your Handle account!  🎉🎉🎉")
                .multilineTextAlignment(.center)
                .padding()
                .font(.largeTitle)
            Spacer()
        }
        .background(YellowBack)
        .navigationBarBackButtonHidden(true)
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

struct Finished_Previews: PreviewProvider {
    static var previews: some View {
        Finished()
    }
}
