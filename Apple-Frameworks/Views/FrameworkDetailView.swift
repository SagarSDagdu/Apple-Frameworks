//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Sagar Dagdu on 03/06/21.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    
    @Binding var isShowingDetailView: Bool
    
    @State var isShowingSafariView:Bool
    
    var body: some View {
        VStack {
            XDismissButton(isShowingModalView: $isShowingDetailView)
            Spacer()
            FrameworkView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
        }.sheet(isPresented: $isShowingSafariView, content: {
            SafariView(link: framework.urlString)
        })
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.frameworks[1], isShowingDetailView: .constant(false), isShowingSafariView: false)
            .preferredColorScheme(.dark)
    }
}
