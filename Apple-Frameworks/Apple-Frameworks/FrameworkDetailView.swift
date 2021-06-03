//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Sagar Dagdu on 03/06/21.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    
    var body: some View {
        VStack {
            Spacer()
            FrameworkView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button(action: {
                print("Learn More")
            }, label: {
                AFButton(title: "Learn More")
            })
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.frameworks[1])
            .preferredColorScheme(.dark)
    }
}
