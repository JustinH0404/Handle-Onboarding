//
//  OnBoardingDone.swift
//  Handle Demo
//
//  Created by Justin Hong on 7/6/22.
//  Copyright © 2022 Handle. All rights reserved.
//

import SwiftUI

struct OnBoardingDone: View {
    var body: some View {
        NavigationLink{
            Finished()
        } label: {
            Text("Done")
                .padding()
                .frame(maxWidth: .infinity)
                .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(Color(hex: 0xD0EDE8)))
                .foregroundColor(.black)
                .padding()
        }
    }
}

struct OnBoardingDone_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingDone()
    }
}
