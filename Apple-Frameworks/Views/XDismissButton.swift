//
//  XDismissButton.swift
//  Apple-Frameworks
//
//  Created by Sagar Dagdu on 04/06/21.
//

import SwiftUI

struct XDismissButton: View {

    @Binding var isShowingModalView: Bool

    var body: some View {
        HStack() {
            Spacer()
            Button(action: {
                isShowingModalView.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            })
        }.padding()
    }
}

struct XDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismissButton(isShowingModalView: .constant(false))
    }
}
