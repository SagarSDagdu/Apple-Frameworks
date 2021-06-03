//
//  FrameworkView.swift
//  Apple-Frameworks
//
//  Created by Sagar Dagdu on 03/06/21.
//

import SwiftUI

struct FrameworkView: View {
    var framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
                .aspectRatio(contentMode: .fit)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }.padding()
    }
}

struct FrameworkView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkView(framework: MockData.frameworks.first!)
    }
}
