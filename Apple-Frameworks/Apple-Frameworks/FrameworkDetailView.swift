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
            Image(framework.imageName)
                .resizable()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            Text(framework.name)
                .font(.title)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button(action: {
                print("Learn More")
            }, label: {
                Text("Learn more")
                    .font(.title3)
            }).frame(width: 280, height: 50)
            .background(Color.orange)
            .cornerRadius(10)
            .foregroundColor(.white)
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.frameworks[0])
            .preferredColorScheme(.dark)
    }
}
